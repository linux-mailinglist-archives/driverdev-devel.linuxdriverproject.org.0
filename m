Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8D1827A7A
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Jan 2024 23:03:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A24841809;
	Mon,  8 Jan 2024 22:03:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A24841809
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CTqliTz_SG0j; Mon,  8 Jan 2024 22:03:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 11BD640999;
	Mon,  8 Jan 2024 22:03:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11BD640999
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6E7401BF3AA
 for <devel@linuxdriverproject.org>; Mon,  8 Jan 2024 22:03:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4132B81D35
 for <devel@linuxdriverproject.org>; Mon,  8 Jan 2024 22:03:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4132B81D35
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gpVmaauEhlWI for <devel@linuxdriverproject.org>;
 Mon,  8 Jan 2024 22:03:45 +0000 (UTC)
Received: from mwp-bld-mts-006c1.ocn.ad.jp (mwp-bld-mts-006c1.ocn.ad.jp
 [210.154.211.4])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 28C028176F
 for <devel@driverdev.osuosl.org>; Mon,  8 Jan 2024 22:03:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28C028176F
Received: from cmn-spm-mts-001c1.ocn.ad.jp (cmn-spm-mts-001c1.ocn.ad.jp
 [153.153.67.130])
 by mwp-bld-mts-006c1.ocn.ad.jp (Postfix) with ESMTP id 5BACF4115;
 Tue,  9 Jan 2024 07:03:43 +0900 (JST)
Received: from mgw-vc-mts-003c1.ocn.ad.jp ([153.153.67.87])
 by cmn-spm-mts-001c1.ocn.ad.jp with ESMTP
 id MxZPrzAv2XnHiMxihrrDPY; Tue, 09 Jan 2024 07:03:43 +0900
X-BIZ-RELAY: yes
Received: from mwp-sdgw-mts-007c1.ocn.ad.jp ([122.28.88.74])
 by mgw-vc-mts-003c1.ocn.ad.jp with ESMTP
 id MxihrR2nPhFb2MxihrdfsE; Tue, 09 Jan 2024 07:03:43 +0900
Received: from c153afuc.mwprem.net (c153afuc.mwprem.net [122.17.147.133])
 by mwp-sdgw-mts-007c1.ocn.ad.jp (Postfix) with SMTP id D30988000433;
 Tue,  9 Jan 2024 07:03:42 +0900 (JST)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: my subject
To: Recipients <zhang.huazhou@nisshin-sci.co.jp>
From: <zhang.huazhou@nisshin-sci.co.jp>
Date: Mon, 08 Jan 2024 23:03:19 +0100
Message-Id: <20240108220332.CBB3820D9B7A9@c153afuc.mwprem.net>
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
Reply-To: rinatcharitable@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Ihre E-Mail-Adresse wurde mit einer Spende in H=F6he von 500,000 ausgezeich=
net. Um diese zu erhalten, wenden Sie sich an: rinat.charitable@web.de
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
