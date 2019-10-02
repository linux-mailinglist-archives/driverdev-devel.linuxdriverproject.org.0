Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 91356C9143
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Oct 2019 21:02:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 97863876B8;
	Wed,  2 Oct 2019 19:02:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ikAKEIVu9oC8; Wed,  2 Oct 2019 19:01:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D5AC386D67;
	Wed,  2 Oct 2019 19:01:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C0EFB1BF5B4
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 19:01:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BE2D087DCC
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 19:01:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BGlxpcX3olSm for <devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 19:01:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CAD748155A
 for <devel@driverdev.osuosl.org>; Wed,  2 Oct 2019 19:01:44 +0000 (UTC)
Received: from mr4.cc.vt.edu (mr4.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8300:0:7b:e2b1:6a29])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x92J1hrB019859
 for <devel@driverdev.osuosl.org>; Wed, 2 Oct 2019 15:01:43 -0400
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200])
 by mr4.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x92J1cqu012515
 for <devel@driverdev.osuosl.org>; Wed, 2 Oct 2019 15:01:43 -0400
Received: by mail-qt1-f200.google.com with SMTP id d24so203692qtn.17
 for <devel@driverdev.osuosl.org>; Wed, 02 Oct 2019 12:01:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:mime-version:date
 :message-id;
 bh=aK+dlxh4aWZdy/McFZvh8C645g1tT1N+aiJMD9e/VE4=;
 b=Eb2oiQNWkGCePiZnXCltkpPbMDg6C18zTsnxZg97ueOpQhfdyoOWJnU9MrRVOEvPlw
 qQRZp8EiLJGSASgdGqmndr6kXba3nqXETrJQLeMD0LnzNM6DmwD7pKYD5NHliZ7M4+nd
 ZPY1OohtOco4ESXWdx4lyY2+/7mpkT8EE1dnuo0ibfFQp4TVgPGyXvHX7LuEABkWNgwD
 k/seBDSoFHq8eqhH9R10nkeMucwDreea3De1J5deFTGHLcnoiVrGGnEjSAE7HLIoRkPJ
 Z/p9JgzE6MYw+oSzoCsjyhkWesu2MJ5usGkUxod6HpV0/FmNvOlUKNos1bT8ZczSARVL
 db0g==
X-Gm-Message-State: APjAAAWI9VsyyupmPTSJle0ArZhA95qbsopoqD6WTFqI1/6bMwxL0o3Y
 epIVe521OxXWlio35x+6vlSqeElpEC6rsYinqlAR9nnn4AkKkyIxPsDr3IqqpXQL7frkQ/U14pF
 hL/8VdGo+HZ6T2MVaq8YhRfSa5PuBnAdP
X-Received: by 2002:ac8:6658:: with SMTP id j24mr5949603qtp.364.1570042898278; 
 Wed, 02 Oct 2019 12:01:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxtfMNWCtc5hidqz4lQIF71wwyWtG81Px7YNTfqRMWzh6KooZ1G7po3RNaHOVP2tbEWtMjLWg==
X-Received: by 2002:ac8:6658:: with SMTP id j24mr5949578qtp.364.1570042897998; 
 Wed, 02 Oct 2019 12:01:37 -0700 (PDT)
Received: from turing-police ([2601:5c0:c001:4341::9ca])
 by smtp.gmail.com with ESMTPSA id h10sm155063qtk.18.2019.10.02.12.01.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2019 12:01:36 -0700 (PDT)
From: "Valdis =?utf-8?Q?Kl=c4=93tnieks?=" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis =?utf-8?Q?Kl=c4=93tnieks?="
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: gregkh@linuxfoundation.org
Subject: [PATCH] drivers/staging/exfat - explain the fs_sync() issue in TODO
Mime-Version: 1.0
Date: Wed, 02 Oct 2019 15:01:35 -0400
Message-ID: <9837.1570042895@turing-police>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

We've seen several incorrect patches for fs_sync() calls in the exfat driver.
Add code to the TODO that explains this isn't just a delete code and refactor,
but that actual analysis of when the filesystem should be flushed to disk
needs to be done.

Signed-off-by: Valdis Kletnieks <valdis.kletnieks@vt.edu>

---
diff --git a/drivers/staging/exfat/TODO b/drivers/staging/exfat/TODO
index a3eb282f9efc..77c302acfcb8 100644
--- a/drivers/staging/exfat/TODO
+++ b/drivers/staging/exfat/TODO
@@ -3,6 +3,15 @@ same for ffsWriteFile.
 
 exfat_core.c - fs_sync(sb,0) all over the place looks fishy as hell.
 There's only one place that calls it with a non-zero argument.
+Randomly removing fs_sync() calls is *not* the right answer, especially
+if the removal then leaves a call to fs_set_vol_flags(VOL_CLEAN), as that
+says the file system is clean and synced when we *know* it isn't.
+The proper fix here is to go through and actually analyze how DELAYED_SYNC
+should work, and any time we're setting VOL_CLEAN, ensure the file system
+has in fact been synced to disk.  In other words, changing the 'false' to
+'true' is probably more correct. Also, it's likely that the one current
+place where it actually does an bdev_sync isn't sufficient in the DELAYED_SYNC
+case.
 
 ffsTruncateFile -  if (old_size <= new_size) {
 That doesn't look right. How did it ever work? Are they relying on lazy

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
