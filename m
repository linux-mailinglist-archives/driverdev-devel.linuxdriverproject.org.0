Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C91196DEA
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 01:50:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6B08086BD0;
	Tue, 20 Aug 2019 23:50:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VnGaWI-yDQrX; Tue, 20 Aug 2019 23:50:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3906A86BA8;
	Tue, 20 Aug 2019 23:50:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1333C1BF424
 for <devel@linuxdriverproject.org>; Tue, 20 Aug 2019 23:50:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 108AB8850C
 for <devel@linuxdriverproject.org>; Tue, 20 Aug 2019 23:50:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TWpevSRMOmEy for <devel@linuxdriverproject.org>;
 Tue, 20 Aug 2019 23:50:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5EB848848F
 for <devel@driverdev.osuosl.org>; Tue, 20 Aug 2019 23:50:51 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id o70so151762pfg.5
 for <devel@driverdev.osuosl.org>; Tue, 20 Aug 2019 16:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ehuber-info.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=43A/6rZVEu8MVx51kpX7+Knp1mtqndqkHQ0+aBAStIQ=;
 b=1tmUNoeJo1uQ0KypWBS7ZG7RiRQJL6avc+91WiM9CriAPew+zEJCQc0qks5e1WRvdy
 p6MhyqeKo8aeCmNqzTgelvyX07ofIt5xn7lpTkLYe8MguJlEZWxpZtpZZYQDdmH75g/X
 G7fW07yHBRKHv3Prhh5SBcQSKnJoYaSUV1zHy1v34N4KuhTuunKk1X/XqTuT/9NqNfrl
 3UFSrWHhtWZ3jf1Aam0/AC+AhmuBbSnvDYq0uM6uMcqXwTwBj/AdtphzlCZqJFN4727I
 wp2HcDWvnrDMuMRNx7HSobxUa/6DjYmSzvINlzkw3FVfH2qlphRRjIxlf7daS5tWy8yi
 UrXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=43A/6rZVEu8MVx51kpX7+Knp1mtqndqkHQ0+aBAStIQ=;
 b=A64ufwjm5f0XC6/IVr7+T/KKDe17+58mPSSl8o7Yrl1qJkdH8SZqqsJRkmKt4NYJIC
 SEZg+cbpqSztmWERuyjRZP5BytXXaEYT5Snk20DSdQsYVuX24oc2kwaHxOAxCfgqVkGi
 fqy1/RI0OY70+uSADJs4NKjXE9DcQbYY0l2TqZkGzkNc8/H58bM4Fnm07/2Cp4Ngxcnl
 UlnjL99F+cKhwDWPWwbAQnYnMs0HjP/px2xEPbfwuYv6g7neH+SpiLR+lKYmgK1nIduq
 qX/rIsif9ACeGgDLKkzrbXRslqNbY5SK6W9tukTDP8LwOHLosOoGAiUTZJPEdj3kDx4c
 8pgw==
X-Gm-Message-State: APjAAAUhshkVJMGKs4BYr+UB1YHLXbWpUwVW3ppqa8vvdKBNE7H8nwbZ
 QfK/8aJDywLeyMcQxDRSvQo7pQ==
X-Google-Smtp-Source: APXvYqxnB4loJSZmWsT2n6z1J4I+8/xzdslWNC4NXfGuQugzkK00E3M/QQY8f5NicoBIEqwgxdrfqQ==
X-Received: by 2002:a17:90a:1110:: with SMTP id
 d16mr2575804pja.29.1566344588516; 
 Tue, 20 Aug 2019 16:43:08 -0700 (PDT)
Received: from ip-172-31-5-250.us-west-1.compute.internal
 (ec2-52-53-212-143.us-west-1.compute.amazonaws.com. [52.53.212.143])
 by smtp.gmail.com with ESMTPSA id b14sm21249511pfo.15.2019.08.20.16.43.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 16:43:07 -0700 (PDT)
From: me@ehuber.info
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/2] comedi: remove checkpatch.pl warnings
Date: Tue, 20 Aug 2019 23:43:05 +0000
Message-Id: <20190820234307.5234-1-me@ehuber.info>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Edmund Huber <me@ehuber.info>

These changes remove checkpatch.pl warnings from comedi/drivers/ni_pcimio.c .

No testing done, all patches build and checkpatch cleanly.

Edmund Huber (2):
  comedi: remove camelcase
  comedi: move #ifdef 0'd stuff to TODO

 drivers/staging/comedi/TODO                |  1 +
 drivers/staging/comedi/drivers/ni_pcimio.c | 52 +---------------------
 2 files changed, 3 insertions(+), 50 deletions(-)

-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
