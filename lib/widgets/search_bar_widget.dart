import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 15,
            offset: Offset(0, 5),
          ),
        ],
      ),

      child: Row(
        children: [

          const SizedBox(width: 20),

          const Icon(
            Icons.search,
            color: Colors.grey,
            size: 28,
          ),

          const SizedBox(width: 15),

          const Expanded(
            child: Text(
              "Search any plant, disease or problem...",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
          ),

          Container(
            margin: const EdgeInsets.only(right: 12),
            width: 46,
            height: 46,

            decoration: BoxDecoration(
              color: const Color(0xffE8F5E9),
              borderRadius: BorderRadius.circular(14),
            ),

            child: const Icon(
              Icons.qr_code_scanner,
              color: Color(0xff2E7D32),
            ),
          ),

        ],
      ),
    );
  }
}