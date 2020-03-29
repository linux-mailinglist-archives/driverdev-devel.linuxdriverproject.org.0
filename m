Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D05AA196F87
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Mar 2020 20:58:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D21D18818D;
	Sun, 29 Mar 2020 18:58:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YePtO4hhmmKD; Sun, 29 Mar 2020 18:58:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3E70487F8E;
	Sun, 29 Mar 2020 18:58:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5E3881BF337
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 18:58:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5AEF986355
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 18:58:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mkr5ZrVz5PZd for <devel@linuxdriverproject.org>;
 Sun, 29 Mar 2020 18:58:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sender4-op-o14.zoho.com (sender4-op-o14.zoho.com
 [136.143.188.14])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 11D17861AA
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 18:58:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1585508318; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=W64XuA28vwCHedPy4g4Pr0NI1WZ4YdQHPSHR+moI4H/2lmmdJL9tc45/8/+Mj3NfKwTakYeTrhL5OZeEYlhgwjmZ5WhXPYqWJeNcL9AaOPlEwRgVPjz97/iGuLhj3nZMBi9zWQe5UmH7fK967HvRDa2mFUPSkB7hFiIPMU6oF20=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1585508318;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To;
 bh=Ejy7caoP8kv6vxqeRtJspkA+5HqgQGadRYqmDpvXAQc=; 
 b=Y3xIkzedvRFwz/AcuqLQCYxyS3Jsl1o7flORRWiEkIfbC1usHZXP7rTgCT0O1rdw6hRkvYjSWLqRRQTz+Rvot8YnMO1+iKSKxIpjT6RAhjUl0U3gF/f3J4tkecCdxTz/R++WcNjobn39yHycDqhHItrFJ4T4zyRI4s0TCAZSMhI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=hurranet.com;
 spf=pass  smtp.mailfrom=aiman.najjar@hurranet.com;
 dmarc=pass header.from=<aiman.najjar@hurranet.com>
 header.from=<aiman.najjar@hurranet.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1585508318; 
 s=zoho; d=hurranet.com; i=aiman.najjar@hurranet.com;
 h=From:To:Cc:Message-ID:Subject:Date:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=Ejy7caoP8kv6vxqeRtJspkA+5HqgQGadRYqmDpvXAQc=;
 b=PTbM7Djsd3yEMs/MbAEUwn5DUQOZHR4lf91MuIsW5Od9/JvcPDulkS1/eNbm93pk
 r5zOQKN54zMLeVn2b8lZI6z01RwXzPUFzA8EfZOfbnZjQnIJ2sAo9I8Nnsq056xiYgT
 J54cDp558/8UlIdCkbH/45EPCEqvkvocQddZI4o8=
Received: from kernel-dev (097-100-022-132.res.spectrum.com [97.100.22.132])
 by mx.zohomail.com with SMTPS id 1585508315518867.1055470302647;
 Sun, 29 Mar 2020 11:58:35 -0700 (PDT)
From: Aiman Najjar <aiman.najjar@hurranet.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Message-ID: <cover.1585508171.git.aiman.najjar@hurranet.com>
Subject: [PATCH v3 0/5] staging: rtl8712: rtl871x_xmit.{c,
 h} code style improvements
Date: Sun, 29 Mar 2020 14:57:42 -0400
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-ZohoMailClient: External
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
Cc: Joe Perches <joe@perches.com>, Aiman Najjar <aiman.najjar@hurranet.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Make several improvements to code style of rtl871x_xmit.c and rtl871x_xmit.h.

v1 -> v2: changes
* Break up single pach into patchset of small patches

v2 -> v3 changes:
* [PATCH 4/5]: Applied suggestions by Joe to improve overall code quality (thanks Joe!)


Aiman Najjar (5):
  staging: rtl8712: fix checkpatch long-line warning
  staging: rtl8712: fix long-line checkpatch warning
  staging: rtl8712: fix checkpatch warnings
  staging:rtl8712: code improvements to make_wlanhdr
  staging: rtl8712:fix multiline derefernce warnings

 drivers/staging/rtl8712/rtl871x_xmit.c | 158 ++++++++++++-------------
 drivers/staging/rtl8712/rtl871x_xmit.h |   2 +-
 2 files changed, 77 insertions(+), 83 deletions(-)

-- 
2.20.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
