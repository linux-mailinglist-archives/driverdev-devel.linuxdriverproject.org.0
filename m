Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE03104651
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 Nov 2019 23:13:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5743587DF9;
	Wed, 20 Nov 2019 22:13:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bltEyiz9DOzu; Wed, 20 Nov 2019 22:13:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2E68487DC2;
	Wed, 20 Nov 2019 22:13:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2F3EA1BF398
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 22:13:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2C99184081
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 22:13:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kznI-_FYhpit for <devel@linuxdriverproject.org>;
 Wed, 20 Nov 2019 22:13:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f202.google.com (mail-pl1-f202.google.com
 [209.85.214.202])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8EAF08407F
 for <devel@driverdev.osuosl.org>; Wed, 20 Nov 2019 22:13:00 +0000 (UTC)
Received: by mail-pl1-f202.google.com with SMTP id k8so706196plt.7
 for <devel@driverdev.osuosl.org>; Wed, 20 Nov 2019 14:13:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=ymAb/3FkIrD0ZHaNkHYugZ2pdI0MGgpm6zAVH7TwBy0=;
 b=QlWTRfAqfXD9o0DTSX7L+2mzKkJvTUAW1tt9Zq1k6C2+a/v+2566Poy28ZYXdh5J+M
 ampbxeI4MjnypYS7Ls8/tO1hbhxuf/w40GRp4pU9QDkq0xR2KqRLJGUTmLLYqFzNO+jp
 yqNN3HUerL2xGB5A9CWkPAFeYt165RysxgVcCuBTlryWlANKxb++1WDVLhREdpuqMjbB
 aoD3hIwpJPnoPxNGfaUGA8fAgwcMwvowDjBxO4PwJfkwrQGZa93vuP4DAR4fT2sIUsYf
 KIdirMp4LBxRAwqE21FejtHmnyo7sWBEyHW9jKnpu8eurAyH1NUEegKQImL10dmcavVy
 Eyug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=ymAb/3FkIrD0ZHaNkHYugZ2pdI0MGgpm6zAVH7TwBy0=;
 b=EbbgswaO1gBo/022oyMcQTslGwjlRG+EsqZ2Ifu7UYaDDpfqLYFLymMGRkXxMPZBNC
 zlrA1GBH2SWeLrOCJzr0I7Wa7Mw9qWXyex56l1bVbmQQepgZpET1Qgfk6CBxDfM3LmrL
 yb42eRp1HUSz+FxNElQ7ZYE7aeOn5fKbkhMn1xv6CTK7HyhttRnpqcTlrDIvIh0hzk8Z
 /+9fYD/X/pnSAdjY3bCRpuw5jy6sAwMZCtLHHLJbUId0cmm9n55eFaVyd6KcBZrcmjY4
 LJ9XKysqHzvFwCTfF5ip+SopSJKJbivUb145XGvNRFB2vs3hzqrhM57lVTu62ZUofrp7
 qx7g==
X-Gm-Message-State: APjAAAUzItl/6E5YDEb8ovWmKXdKvpmTTGJRjJ2vMR8xH70MBcGRo7Sj
 ti1Mws/UMPCCxkkiWV+nKxe9Drjc9lJRwUIDmoo=
X-Google-Smtp-Source: APXvYqx+wsW3VsrA6qKf3LQshPe2grt4za913f8rG0jLRYs+i4N6qOOfg4DSwiqKNRIoDnaE3lKBTMQKY7TUIuWBU0c=
X-Received: by 2002:a0c:b062:: with SMTP id l31mr4621746qvc.43.1574281264073; 
 Wed, 20 Nov 2019 12:21:04 -0800 (PST)
Date: Wed, 20 Nov 2019 15:20:58 -0500
In-Reply-To: <cover.1574253964.git.marcgonzalez@google.com>
Message-Id: <20191120202102.249121-1-marcgonzalez@google.com>
Mime-Version: 1.0
References: <cover.1574253964.git.marcgonzalez@google.com>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH v2 0/4] staging: vchiq: Fix vchiq_read return value in case of
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
problem is that this is never returned to the user, and instead the
function continues, adding the number of bytes that should have
been copied to context->actual.

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

v2:
separate first patch into different logical changes.

Marcelo Diop-Gonzalez (4):
  staging: vchiq: Fix block comment format in vchiq_dump()
  staging: vchiq_dump: Replace min with min_t
  staging: vchiq: Refactor indentation in vchiq_dump_* functions
  staging: vchiq: Have vchiq_dump_* functions return an error code

 .../interface/vchiq_arm/vchiq_2835_arm.c      |   5 +-
 .../interface/vchiq_arm/vchiq_arm.c           | 129 ++++++++++--------
 .../interface/vchiq_arm/vchiq_core.c          | 104 ++++++++++----
 .../interface/vchiq_arm/vchiq_core.h          |  12 +-
 4 files changed, 153 insertions(+), 97 deletions(-)

-- 
2.24.0.432.g9d3f5f5b63-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
