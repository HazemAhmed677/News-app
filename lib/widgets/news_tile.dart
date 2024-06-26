import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

// cached network image
class NewsTile extends StatefulWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  State<NewsTile> createState() => _NewsTileState();
}

class _NewsTileState extends State<NewsTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: (widget.articleModel.image != null)
                ? Image.network(
                    widget.articleModel.image!,
                    height: 210,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )
                : Image.asset('assets/default photo.jpg')),
        const SizedBox(
          height: 12,
        ),
        Text(
          widget.articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          widget.articleModel.subTitle ?? '',
          maxLines: 2,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        )
      ],
    );
  }
}
