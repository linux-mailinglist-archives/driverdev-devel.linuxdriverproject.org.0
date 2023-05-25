Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58486711A0F
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 May 2023 00:14:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B438F42A14;
	Thu, 25 May 2023 22:14:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B438F42A14
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xEBZE4lzia8Q; Thu, 25 May 2023 22:14:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9825740017;
	Thu, 25 May 2023 22:14:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9825740017
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2703D1BF35B
 for <devel@linuxdriverproject.org>; Thu, 25 May 2023 22:14:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F1EDA42A14
 for <devel@linuxdriverproject.org>; Thu, 25 May 2023 22:14:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F1EDA42A14
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W7h9Lw7yJsmG for <devel@linuxdriverproject.org>;
 Thu, 25 May 2023 22:14:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DF51A40017
Received: from mwp-bld-mts-002c1.ocn.ad.jp (mwp-bld-mts-002c1.ocn.ad.jp
 [153.128.188.36])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DF51A40017
 for <devel@linuxdriverproject.org>; Thu, 25 May 2023 22:14:16 +0000 (UTC)
Received: from cmn-spm-mts-003c1.ocn.ad.jp (cmn-spm-mts-003c1.ocn.ad.jp
 [153.153.67.136])
 by mwp-bld-mts-002c1.ocn.ad.jp (Postfix) with ESMTP id E502F54001BD3;
 Fri, 26 May 2023 07:14:14 +0900 (JST)
Received: from mgw-vc-mts-008c1.ocn.ad.jp ([153.138.238.159])
 by cmn-spm-mts-003c1.ocn.ad.jp with ESMTP
 id 2JDqqjwBHVCpm2JDqqnp9T; Fri, 26 May 2023 07:14:14 +0900
X-BIZ-RELAY: yes
Received: from mwp-sdgw-mts-004c1.ocn.ad.jp ([122.28.88.71])
 by mgw-vc-mts-008c1.ocn.ad.jp with ESMTP
 id 2JDqqKZhZs7vW2JDqqVhyb; Fri, 26 May 2023 07:14:14 +0900
Received: from c15u1u5l.mwprem.net (c15u1u5l.mwprem.net [122.17.164.24])
 by mwp-sdgw-mts-004c1.ocn.ad.jp (Postfix) with SMTP id 6D71B800042D;
 Fri, 26 May 2023 07:14:14 +0900 (JST)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Project Proposal
To: Recipients <k-takahashi@maxis.ne.jp>
From: "T Peter" <k-takahashi@maxis.ne.jp>
Date: Thu, 25 May 2023 15:14:02 -0700
Message-Id: <20230525221408.D2DAF408910F@c15u1u5l.mwprem.net>
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
Reply-To: tanglkpeter11@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Dear, 

Please Confirm the project proposition I sent to you has been duly received.

Thank you

I anticipate your response

Regards,

T LK Peter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
