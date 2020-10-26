from django.shortcuts import render
from rest_framework.views import APIView
from rest_framework.response import Response

# create your views here

class SigInUserPostsView(APIView):

    def get(self, request, post_id):
        media_object = None
        context = {
            'post_id': '5',
	        'description': 'Meh.',
	        'media': media_object
            }
        return Response(context)
    # TODO: ten post jest na innym url
    def post(self, request):
        context = {
            'post_id': '5',
	        'message': 'Post successfully added.'
            }
        return Response(context)
    
    def put(self, request, post_id):
        context = {
            'post_id': '5',
	        'message': 'Post successfully updated.'
            }
        return Response(context)
    
    def delete(self, request, post_id):
        context = {'message': 'Post successfully deleted.'}
        return Response(context)


class SigInUserPostsListView(APIView):

    def get(self, request):
        print(request.GET)
        posts_list = []
        context = {'posts_list':posts_list}
        return Response(context)


class PostsListView(APIView):
    
    def get(self, request, user_id):
        print(request.GET)
        posts_list = []
        context = {'posts_list':posts_list}
        return Response(context)