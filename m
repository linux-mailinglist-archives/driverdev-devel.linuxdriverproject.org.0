Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F276163B61
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jul 2019 20:49:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2D37086866;
	Tue,  9 Jul 2019 18:49:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KfWHHU5Lw+BF; Tue,  9 Jul 2019 18:49:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DAB7381D83;
	Tue,  9 Jul 2019 18:49:28 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9ADE91BF4D8
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  9 Jul 2019 18:49:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 92E0487B6A
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  9 Jul 2019 18:49:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gA2B7PhwmMst
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  9 Jul 2019 18:49:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1D7FA85C56
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  9 Jul 2019 18:49:26 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id j19so22657666qtr.12
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 09 Jul 2019 11:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=uNRAxPwZKVJvArK2MPeZmsIj3VklLhBz1sgoZH4U338=;
 b=T8t7xT4bXr5+cMp0SwucOaa+jr6CjxiyTnuEK99alH56YsUvlmqOy68CMG3jCK99Js
 Bm+3h8WI17JG/ItFy5JAwKorvODj8RQaUDj4nVDQbCLDSUY2I2BJPBN8Cl1ZjFut701p
 4iNLGUvbToeVC6cegwXLWxkQj+1alu1DIkkMQZmRayJt/zNqxJA89VE8vrEs7dL2A1jx
 kDQnK3vdPEE9rVT3azpy/5yyW6apGMi2VkI8Imeh0k1CgHDQ/bM6JULhAt0rX8ScTtVk
 evkMYAMcArhaxPD4RR4GBtOZsNf33dBGU/VUSc5zeeF53l6k4N07jvQNAv0Mh+0B0g05
 onhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=uNRAxPwZKVJvArK2MPeZmsIj3VklLhBz1sgoZH4U338=;
 b=A3zlY6xwEFK+Nk7WFpfIYv3Ln5R6QxtRawVdj4fqQs5ilNy1WU6W+rzArjJ+vqenjT
 GPouCGbdNBH5BjCRk/+8xwc7ikSvt6j2YTAVfySv5XdTlsrJyZR9yCz9DlOy5qxVjnZ1
 HZe4Rm/zZWX5OKyrOgTemNTkHiiL9y5QIoRKilN0APRGbJz8YevR7ZrljHXkDc2mx2c3
 z9APWWfyPwKF2pMe11oMwoVJfOR+MFkDWm7vUnAst/yNtvBbblUMAM63uc6E+iUnAZiA
 tvIejtYbZ5JS6gkGZGDl1dGLzm0VJmxucHADmHz75J5awXqbTNNIb8lvSfD9P2JJrJI5
 EVGg==
X-Gm-Message-State: APjAAAW5NuGlYCY/hyPJM6W4wbv/qFVod66ZLHzjUbO6eJwJ7G+kcEhq
 6KXfOQV0d3wokA+UGx9fWZL8kWNKSTdEP1St0/E=
X-Google-Smtp-Source: APXvYqwHTDQtZBqugRdjRtCQK+RSPwb9ASus7uIdVjC9BipvZb/ot9JXAZivf4hQdrrJRE+GX7Agqg/gDb/kzFIT+rM=
X-Received: by 2002:ac8:27d4:: with SMTP id x20mr19533386qtx.138.1562698165286; 
 Tue, 09 Jul 2019 11:49:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a37:5289:0:0:0:0:0 with HTTP;
 Tue, 9 Jul 2019 11:49:24 -0700 (PDT)
From: "Mr. Ali Mahmood" <mrs.mimiqaudon5@gmail.com>
Date: Tue, 9 Jul 2019 11:49:24 -0700
Message-ID: <CA+MC4Qy7WBG2sNCFOihB7uhDiCcYCFagAZnfxpPeXPEPdD73iQ@mail.gmail.com>
Subject: Dear Friend, My Name is Mr Ali Mahmood
To: undisclosed-recipients:;
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
Reply-To: alimahmood67@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend,

My Name is Mr Ali Mahmood, i have a business transaction. I will be
very glad if you can
assist me to receive this sum of ( $22 Million dollars.) into your
bank account for the benefit of our both families, reply me if you are
interested in this business.

Mr Ali Mahmood
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
