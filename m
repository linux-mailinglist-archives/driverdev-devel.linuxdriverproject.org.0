Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FAA2213E
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 May 2019 04:31:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1BF218833E;
	Sat, 18 May 2019 02:31:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1isxBS1-QuVw; Sat, 18 May 2019 02:31:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8CA0987E78;
	Sat, 18 May 2019 02:31:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8D1BB1BF306
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 02:31:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 85FE8878D0
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 02:31:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yyZIGq62tDhj for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 02:31:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CF8F5821E2
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 02:31:07 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id a39so10281890qtk.2
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 19:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=q67f1b2VxwMpxdmTspg9aRXu3YBX/BaqwxIwMcxxa5A=;
 b=CRO1qdgYKtpsKf1QqpQyrnSqu8vePhC+DaL23Vwv3zpWWx5DdVd2o/kH7L5qLlalr2
 VHom+PuE4UGqtHX78zcC9GIgXHqF1z8nzroNbvEyGc5/2U8k/wQOG7JdyPZ+yNpcm4AC
 P/fleD2A/UqxDOhuknM46vITzzRgAwj0+txNa6JeKB2VqjUCyocGTAkZwRTG+Febyyoq
 nQGgBbu4q22tpIUhWjmZ3niNV9qBkj6p9HFG8PcA2rPf3335tn5KcSi5k5xfxjZNKe9c
 6PCcMY2PTmM2bXBQ73yI/ExKIF/g7KnNCNuvpvZY4Gp9Esg+zs8Pu+Tw9frCUcYXSj2w
 fckw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=q67f1b2VxwMpxdmTspg9aRXu3YBX/BaqwxIwMcxxa5A=;
 b=MTOetJdPMG+6WfuLsvkHZ48JG5ccU+4xp4bDxVb94ml9T2MntP7UwPwUa2LxuIEcDd
 IKhmvbxA8ETbV/ABVmp7Oh/+j1EhQFDbDJjkmcM2Qmeg3MhMNx/tlbmT4TBy98SA80jD
 K8ZDQ4HePeZSCk2iuV/lZlcxaETrM+4lPZle2bB6qkzEpXlWps+7hxNcGVEDXymdMgyh
 iWmu6o1/0nOlsYUUqxhQPCrj91AWfnj4gYWH2+ytwgXb8hf0mu4INdFx9abMqRYDWHAT
 1/f1Ls42GP/2icGcllatKnrVWpdctTBReBuvrLLpaAUyt0N6lvJEPrj/PY4iropcOt26
 hAGA==
X-Gm-Message-State: APjAAAW4OnGOVaNk7JWFO2D8htmNzVtA4OCi/ytELUEGuyQcmdiNykWk
 08KWuLg9ktxeZI5u8MQWC4s=
X-Google-Smtp-Source: APXvYqwc2ui0Mt2oTeKC744R/igCYt4EiQIOknTQYNHjLP0uMC9mU0xWi9CCaJFSbTibukNF7VFTFA==
X-Received: by 2002:a0c:b621:: with SMTP id f33mr19245270qve.199.1558146666930; 
 Fri, 17 May 2019 19:31:06 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.dc.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id n66sm5210322qke.6.2019.05.17.19.31.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 19:31:06 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: gneukum1@gmail.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/5] Updates to staging driver: kpc_i2c
Date: Sat, 18 May 2019 02:29:55 +0000
Message-Id: <cover.1558146549.git.gneukum1@gmail.com>
X-Mailer: git-send-email 2.21.0
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

Attached are an assortment of updates to the kpc_i2c driver in the
staging subtree.

As a quick summary:

Patches 1, 4, and 5 address style concerns raised by the checkpatch
script. Patch 1 (a reindentation fix) likely added additional 'line
length' warnings, but given the fact that they were only hidden due to a
nonstandard indentation style, I elected to defer that work to a future
patchset. If the reviewers should disagree with that choice, I'd be happy
to fix up those issues in a v2 upload.

Patch 2 is a reformatting / reorganization of the copyright header at the
top of the file. I attempted to look at some other drivers in the i2c
subsystem for inspiration, but I'd be happy to drop this isn't as simple
an update as it seems.

Patch 3 addresses a potential bug in the cleanup of memory allocated in
the probe method.

Geordan Neukum (5):
  staging: kpc2000: kpc_i2c: reindent i2c_driver.c
  staging: kpc2000: kpc_i2c: reformat copyright for better readability
  staging: kpc2000: kpc_i2c: prevent memory leak in probe() error case
  staging: kpc2000: kpc_i2c: use %s with __func__ identifier in log
    messages
  staging: kpc2000: kpc_i2c: fixup block comment style in i2c_driver.c

 drivers/staging/kpc2000/kpc_i2c/i2c_driver.c | 1043 +++++++++---------
 1 file changed, 527 insertions(+), 516 deletions(-)

--
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
