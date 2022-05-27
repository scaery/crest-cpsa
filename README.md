# CREST CPSA LEARN & EXAM PREP

The purpose of this repo is to make the user conquer CREST CPSA multiple choice test. It contains 225 questions.

Since I am personally unable to compete multiple choice tests without doing multiple choice, I am recommending in training over using flashcards with this "Docker" solution. Please be careful, do not cheat any exam attempt, but learn the things you are targeting as pentester.

By using this repo you admit yourself accepting this regulatory. The author is not responsible for any misuse. For educational purpose only! 

# Build

Clone the repo and upstart the Docker Container with:

```bash
docker build -t crest .
docker run --rm -ti crest

# FIXME: docker-compose up -d
```

## Modify Exam question count

Individual tests can be generated like this:

```bash
vim -e Dockerfile

# Unset for individual set of 120 questions
CMD ["/usr/local/bin/php","-f","exam","crest-cpsa-exam.json","120"]

# Exit vim with ESC sequence
!:wq
```

## Contribute

Submit failures, error or particular questions in this format:

```
Question (21): "Which of these protocols is not vulnerable to address spoofing if implemented correctly?"

Problem: "TCP"

Solution: More precice would be "TCP (Transmission Control Protocol)".
```

Happy examing and good luck!
