Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AEF91040C1
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 Nov 2019 17:27:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3E69285C77;
	Wed, 20 Nov 2019 16:27:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jWuQpp0th1Oq; Wed, 20 Nov 2019 16:27:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 187ED84949;
	Wed, 20 Nov 2019 16:27:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8EF4F1BF2CA
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 16:27:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8B44F85008
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 16:27:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jg46Y78o2w1T for <devel@linuxdriverproject.org>;
 Wed, 20 Nov 2019 16:27:47 +0000 (UTC)
X-Greylist: delayed 00:25:36 by SQLgrey-1.7.6
Received: from mail-pf1-f201.google.com (mail-pf1-f201.google.com
 [209.85.210.201])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5E56884F61
 for <devel@driverdev.osuosl.org>; Wed, 20 Nov 2019 16:27:47 +0000 (UTC)
Received: by mail-pf1-f201.google.com with SMTP id z3so52989pfk.22
 for <devel@driverdev.osuosl.org>; Wed, 20 Nov 2019 08:27:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=HsAuVMkx6t8O586c6Dyda7qXdoCpWt9vDvhXagARpNY=;
 b=GGjNV31FbiULaQpuXjSLyFVJ3Tzvw/7bcD44+ZHQjof6QAaJcxQMjIdmv3JITwiEhJ
 06KaiC28YM0dchxnl9hEaUv/SDrSBX+eBbY8+f5kZfuFVDsR6UXP83lySzDJ4sWvVZ5i
 MrlG6XJKzL13MsaqACnUuFYpXpuDsBjNokPpj7EzWXuq3Tirr6VbvYZK8YR7JvU7jCXp
 YhZJwHsCPhxI9NOVOirvsHICg1ROEMRPsefs3iXfeRKj2dHJhfYUEY41dkQdTMmfuXZp
 SroPQurkdvHFlnKMwN1UIeYHSpzryYSv9qjmUpJwTvxhYyTxfSzs6PBpyX8GzZ2HqBWz
 sC+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=HsAuVMkx6t8O586c6Dyda7qXdoCpWt9vDvhXagARpNY=;
 b=jgAQtWx0wwgqmNOhAHX7NsvMPk6pVGRtXnUy0deNiWnWwe8A5ZmnHHARIoSjq2HHVv
 Ss8zFqNeLlcPRjM0Hy7oqWp/j+SlMt4YVqx88H8GWMVG49DumkGJHcmNaaq6hgVMQBfz
 JpLV2a9D7xE/nHGlBat9KLP+8iNW/XJYQSrVMi5cCP+WlxrP4z4aAUw/xgHAhjjAvt0a
 ICkV9zD4WI3++JuxUqx1ty5rvKyXd7qXle1wLAdaL95WNTAM6JgGmAmwFbv4Gi/JjqL1
 biuVq1jjwCKYcQBbf3uRi6neSx/w1BNiBG+CRkwgSYceUNyyX6dwRxZhuBKyHMK9lk4n
 3vaQ==
X-Gm-Message-State: APjAAAUCcMoL+3hIRE/AqbRm1xng9/qUSe2T7fcBF5J6E/9xl8BwzfdB
 oQrvAUAC44Obu/KGWM+UsXP0A9gZFY79hdaZJD0=
X-Google-Smtp-Source: APXvYqwy0ZdudDLBOsWf58zkgsPYJeO8OXhQAaG8PCk2AQeICScoep5h2v/rvuiwBMGngacTvIzhJM7I7G0gjQimB8U=
X-Received: by 2002:a05:6214:13aa:: with SMTP id
 h10mr3238241qvz.142.1574264209677; 
 Wed, 20 Nov 2019 07:36:49 -0800 (PST)
Date: Wed, 20 Nov 2019 10:36:45 -0500
Message-Id: <cover.1574253964.git.marcgonzalez@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH 0/3] staging: vchiq: Fix vchiq_read return value in case of
 error
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: gregkh@linuxfoundation.org, eric@anholt.net, wahrenst@gmx.net
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This is a proposed fix of an issue regarding the handling of positive
return values from copy_to_user() in vchiq_read(). It looks like the
struct dump_context passed to the vchiq_dump() function keeps track
of the number of bytes written in the context->actual field. When
copy_to_user() returns a positive value, this is set to -EFAULT. The
problem is that this is never returned to the user, and instead the function
continues, adding the number of bytes that should have been copied
to context->actual.

Running the following program:

#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>

int main(int argc, char **argv) {
	int fd = open("/dev/vchiq", 0);
	if (fd < 0)
		exit(-1);
	sbrk(getpagesize());
	char *bad_buf = sbrk(0)-100;
	int x = read(fd, bad_buf, 2000);
	printf("%d %d\n", x, errno);
	puts(bad_buf);
}

gives this output:

-1 1
State 0: CONNECTED
  tx_po
  
 
  Remote: slots 2-32 tx_pos=578 recycle=1f
    Slots claimed:

Note the mangled output and incorrect errno value. Messing with the
constants in that toy program changes the results. Sometimes read()
returns with no error, sometimes it returns with a wrong error code,
sometimes with the right one. But it seems that it only ever returns an
error at all accidentally, due to the fact that the comparison between
context->actual and context->space in vchiq_dump() is unsigned, so that
that function won't do anything else if it ever sets context->actual
to a negative value.

After this patchset, the above program prints this:

-1 14
State 0: CONNECTED
  tx_pos=b4a218(@165de6b4), rx_pos=ae0668(@f02b54f4)
  Version: 8 (min 3)
  Stats

Help with testing would be appreciated. So far I've basically just
diffed the output of 'cat /dev/vchiq', run the program above with
a few different values, and run vchiq_test a few times.

These were applied to the staging-next branch of the tree
at git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git

Marcelo Diop-Gonzalez (3):
  staging: vchiq_dump: Replace min with min_t
  staging: vchiq: Refactor indentation in vchiq_dump_* functions
  staging: vchiq: Have vchiq_dump_* functions return an error code

 .../interface/vchiq_arm/vchiq_2835_arm.c      |   5 +-
 .../interface/vchiq_arm/vchiq_arm.c           | 129 ++++++++++--------
 .../interface/vchiq_arm/vchiq_core.c          | 104 ++++++++++----
 .../interface/vchiq_arm/vchiq_core.h          |  12 +-
 4 files changed, 153 insertions(+), 97 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
