import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MessageComposer extends StatefulWidget {
  bool onFocus = false;

  MessageComposer({Key? key}) : super(key: key);

  @override
  _MessageComposerState createState() => _MessageComposerState();
}

class _MessageComposerState extends State<MessageComposer> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      child: Row(
        children: [
          GestureDetector(
            onTap: () => widget.onFocus = true,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              width: MediaQuery.of(context).size.width * 0.8,
              height: 48,
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const SizedBox(width: 8),
                  const Icon(
                    Icons.insert_emoticon,
                    color: Colors.grey,
                    size: 30,
                  ),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: TextField(
                      textCapitalization: TextCapitalization.sentences,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Mensagem',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 6),
          GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(40),
              ),
              height: 48,
              width: 48,
              child: const Icon(
                Icons.send,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
