Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C718196750
	for <lists+driverdev-devel@lfdr.de>; Sat, 28 Mar 2020 17:30:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8CF6E87C57;
	Sat, 28 Mar 2020 16:30:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cX9PHz0WC3bx; Sat, 28 Mar 2020 16:30:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 42A46876F2;
	Sat, 28 Mar 2020 16:30:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8AA7A1BF2C9
 for <devel@linuxdriverproject.org>; Sat, 28 Mar 2020 16:30:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8729D86AEB
 for <devel@linuxdriverproject.org>; Sat, 28 Mar 2020 16:30:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A6FI51BL5BBp for <devel@linuxdriverproject.org>;
 Sat, 28 Mar 2020 16:30:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sender4-op-o14.zoho.com (sender4-op-o14.zoho.com
 [136.143.188.14])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2588B86AE8
 for <devel@driverdev.osuosl.org>; Sat, 28 Mar 2020 16:30:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1585413038; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=kV3qt3YBKrbyMMMO2IkDxAuJBhAISaVrcpfjXkCRxFHeNAWzn4lE2WshIRa3FqC38rL74rZgwzx1+QYcwnNMCYk19s03pHhVJ9zshOVkqAnTo49hAIPLpH0aADRBsbQhefmGafoiqVPxSSWjmk5DJ+j1GhRuEFx9s+r958yjtgQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1585413038;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=W8sqTVEMcyz6GbHdpLb1qcpeRJxeb3CDdvMKIWzOOas=; 
 b=Zq+4ry9R+aoVGlV6RO+Lm+29iaZDpFTJEJ7LjNx/GCPOcDt2D4Uhx5wtsY9qvzTrCCV6JgdxTtvTxFU0qVBmOw10u/6Z064FBbAEBQMulYn0EjfgbWsrVoAhnDB+3SxIXv5wZNyAeX9Rx8NEkN74iEERPFmd140O1/iiijVIcrQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=hurranet.com;
 spf=pass  smtp.mailfrom=aiman.najjar@hurranet.com;
 dmarc=pass header.from=<aiman.najjar@hurranet.com>
 header.from=<aiman.najjar@hurranet.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1585413038; 
 s=zoho; d=hurranet.com; i=aiman.najjar@hurranet.com;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=W8sqTVEMcyz6GbHdpLb1qcpeRJxeb3CDdvMKIWzOOas=;
 b=WacWzqBFOl9ntZYDamCl6mn7PzNqKxPCqsjao9UX3/cVwxIdhlW5P5ETdK/nDsvj
 rcVD1G4+G7V0mUzNl4SNZdCFwLRBIIUCQVvZ12Dg+S0nuKe8T8TlxxKoquOJHxmRpfB
 kE7bfTmu95gM7BOhsnEQ/8UAFKYomKO5D9Sc30q4=
Received: from kernel-dev (097-100-022-132.res.spectrum.com [97.100.22.132])
 by mx.zohomail.com with SMTPS id 1585413035447344.88702204502886;
 Sat, 28 Mar 2020 09:30:35 -0700 (PDT)
From: aimannajjar <aiman.najjar@hurranet.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <cover.1585353747.git.aiman.najjar@hurranet.com>
Subject: [PATCH v2 0/5] staging: rtl8712: fix rtl871x_xmit.c warnings
Date: Fri, 27 Mar 2020 20:08:06 -0400
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200327080429.GB1627562@kroah.com>
References: <20200327080429.GB1627562@kroah.com>
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
Cc: devel@driverdev.osuosl.org, aimannajjar <aiman.najjar@hurranet.com>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 linux-kernel@vger.kernel.org, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This v2 of the patch breaks up the previous patch into
a patchset of smaller patches.

Overall, the patchset fixes the remaining 9 warnings
in rtl871x_xmit.c.

aimannajjar (5):
  staging: rtl8712: fix checkpatch long-line warning
  staging: rtl8712: fix long-line checkpatch warning
  staging: rtl8712: fix checkpatch warnings
  staging: rtl8712: fix multiline derefernce warning
  staging: rtl8712:fix multiline derefernce warnings

 drivers/staging/rtl8712/rtl871x_xmit.c | 85 +++++++++++++-------------
 1 file changed, 41 insertions(+), 44 deletions(-)

-- 
2.20.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
