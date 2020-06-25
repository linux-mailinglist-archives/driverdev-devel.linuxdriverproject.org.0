Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D366520A7DF
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jun 2020 23:58:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5830B8821C;
	Thu, 25 Jun 2020 21:58:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hgUvimBqEPqQ; Thu, 25 Jun 2020 21:58:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2D4DB8822C;
	Thu, 25 Jun 2020 21:58:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B75EC1BF599
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 21:58:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B476E88238
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 21:58:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OXk8JMv1suOU for <devel@linuxdriverproject.org>;
 Thu, 25 Jun 2020 21:58:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0B86D8821C
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 21:58:04 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id d12so3419313ply.1
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 14:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xh4gOSxe3fr64AueGWfXx6C5/rsH7NhHoKvgWVgZVr4=;
 b=mcDsakDcleib/FoMkUwbumU3VistrSUbALg8/gMMvinVpmATahoR2dTmqdVRcO0hzI
 su+5IhIdL9JoblkA65ifdMlpUmHcW39wMJflRYCjPzNPT5/0SUJGO7EGGwUjU4Zp8wze
 SH3ad0EbepAPdwssG/Ng4ex29dLrL6CDNN1TX08YoueNQp6bzZ4g3Xeuuq7LOtRHwIl/
 DupBOlNQuIUoufXYREBEzef248uAenK/5SQvFBWXtAgmd5xvNNNUWeVaSZtzBNKZGzGI
 H19WyI+IUtCdqJBDFrZ/fKZIp4FSdAu+bHndOCFrBXDMfcvshi8QzoZW2SxvtNTKo6ju
 i1oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xh4gOSxe3fr64AueGWfXx6C5/rsH7NhHoKvgWVgZVr4=;
 b=J2SymhcHb6eZr0e9xHObPIDKTIyORMfIgb0VMrCiyzAqaiefan5aZ/fdFxP1pA6Ihz
 nO3PIG4/jkevRCaLF40LjGlhYH1VbH2YrdrVcWF7AAVeRLdX2W13K+g44Cw/FvzHzjHV
 nadeHsm5d3ZhWBhp5jmYxUO47KXaAIyojbvaiGkoXsEbQtI2DOEzN1JCoBCectGE4mxQ
 HIIG6vwQ0aILwe940JoU+CjFc7jJ4jOBEg3PvGGKfQ217WLo21NUsPyskwyMNEndqL/L
 KUAGT5mOlko1uUCTJk3s7ixxqTF6Kw26aRopoQ8RTMdka3+njttmEDdeqdfiiQRehv9c
 KYkg==
X-Gm-Message-State: AOAM5308OPg7QvrG7Ca77ivFaoygCe4WtCYEfKXA0b2a8dlHj0b8IGpF
 MYVmNpJX2XgdNQYYzghGO51DswTvB+0=
X-Google-Smtp-Source: ABdhPJxEKp7do8UO8mpFXBaKbds0+EvbrlLq8hYXZsOhOeNxeUfqN7GKvH+WQBcIJn6ehLWz6IrnRQ==
X-Received: by 2002:a17:90a:ef17:: with SMTP id k23mr43067pjz.45.1593122283401; 
 Thu, 25 Jun 2020 14:58:03 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id y10sm25137563pfq.34.2020.06.25.14.58.01
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 14:58:02 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH 0/2] staging: qlge: coding style fix for the qlge driver
Date: Fri, 26 Jun 2020 05:57:53 +0800
Message-Id: <20200625215755.70329-1-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

These two patches fix two coding style problems for all files under
drivers/staging/qlge as reported by checkpatch.pl,
    - trailing */ in block comment
    - unnecessary else after return or break

Coiby Xu (2):
  fix trailing */ in block comment
  fix else after return or break

 drivers/staging/qlge/qlge_dbg.c  | 23 ++++++++++-------------
 drivers/staging/qlge/qlge_main.c | 11 ++++++-----
 drivers/staging/qlge/qlge_mpi.c  | 14 ++++++++------
 3 files changed, 24 insertions(+), 24 deletions(-)

--
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
