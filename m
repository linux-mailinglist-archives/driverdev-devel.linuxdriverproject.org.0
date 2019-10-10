Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E45CD2AB8
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Oct 2019 15:16:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A893586B93;
	Thu, 10 Oct 2019 13:16:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 14qMz3FB4-fZ; Thu, 10 Oct 2019 13:16:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8EC8886957;
	Thu, 10 Oct 2019 13:16:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 47C481BF84C
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 13:16:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 41D5B87C93
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 13:16:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I3w+ZLue0ZGI for <devel@linuxdriverproject.org>;
 Thu, 10 Oct 2019 13:15:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 68D3385CC3
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 13:15:59 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id e1so3657561pgj.6
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 06:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5R0PLgqaQt/LlyIHo4fMN0uBOe621ivStxyy9BRN30w=;
 b=kqyqbxRRk40GY6BtvCZiSHUTKQ6DamrPeD9RxeaGQVsSyTGqqUJw/1uIK2k7B6rYnU
 LFHnCczr2Ne15BuewzuUndNP5PkpnzsyX1qJGHBst1DrhfrYa/I0Z22Ry5RYhn0JAoev
 YZ8KbYsSQUQYB42d2JsZ+bRhYUGpL3SCsnA07nZNiEZH6PFsyEaYCJjHKUl5nlRBHtG7
 DVk5EG43gjztJR677j6qVUY4LwvZUuutwAXXl1MYhJL1FBrMn8p4BJHc5ejtU7I823+H
 TKIA17DlA4nx/uYSNqA0dLkZoZWu2qPeXPDi6z/SeX7dAGp68OxgwoaTLEVxeClublyV
 ac9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5R0PLgqaQt/LlyIHo4fMN0uBOe621ivStxyy9BRN30w=;
 b=FJ8wRlpiBK0jZ/Xup4cdxpBaNXFVnQrbXocMGZjTL4rZEB8jL8JQwnrm+yAwCnHpgE
 +7/Zom2sS9eBcV5mJa8XfYMUoh+23nMa1XvtqqW8e7pKxp7UQnjYQZ8bYTootLGQ2in0
 AMKcqExIuNM0i4evY9xG7vYRJ1dPA5f/Y9NWcQuiGf68UZ5cn3aiboDk0Yz2SLC3pbVF
 TDcBMqcr2EB4xYcKmiZInrBzLhkRZtS7Q99I5hxI21hg92KCqjUXipSPBNp4qfHo1xWN
 +Y0dtOhrgLWVLF8DdBC5T8c8AqrJrQYLFYkDZDmXXwNKCiA4acFKRdj7tiFY4rRynAdV
 u/hQ==
X-Gm-Message-State: APjAAAUXRW+LWruZ73raLVtLGFbA5w9O0T4wltfeOCp3yAF5qEZCeiC8
 BXSJSM52/JkuEKJcD1WKG4A=
X-Google-Smtp-Source: APXvYqwD7EpaZDerJpsr3Zx2t8DFaiXmyVJfu6eNr2V4XHoPuEij7Cvtmt1GqXfCFQ09S7/+sp6lxw==
X-Received: by 2002:a65:6205:: with SMTP id d5mr11340562pgv.424.1570713358872; 
 Thu, 10 Oct 2019 06:15:58 -0700 (PDT)
Received: from wambui.brck.local ([197.254.95.158])
 by smtp.googlemail.com with ESMTPSA id 2sm8707720pfa.43.2019.10.10.06.15.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 06:15:58 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/4] staging: rtl8723bs: Style clean-up in rtw_mlme.c
Date: Thu, 10 Oct 2019 16:15:28 +0300
Message-Id: <cover.1570712632.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patchset addresses multiple style and formatting issues reported by
checkpatch.pl in drivers/staging/rtl8723bs/core/rtw_mlme.c

PATCH v2 of the series corrects the "patchest" mispelling in the
original cover letter and provides a clearer subject line.

PATCH v3 of the series incorporates newer changes in rtw_mlme.c
on staging-testing.

Wambui Karuga (4):
  staging: rtl8723bs: Remove comparisons to NULL in conditionals
  staging: rtl8723bs: Remove unnecessary braces for single statements
  staging: rtl8723bs: Remove comparisons to booleans in conditionals.
  staging: rtl8723bs: Remove unnecessary blank lines

 drivers/staging/rtl8723bs/core/rtw_mlme.c | 161 +++++++---------------
 1 file changed, 50 insertions(+), 111 deletions(-)

-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
