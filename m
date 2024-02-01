Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3436784535C
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Feb 2024 10:02:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EFCD141ABE;
	Thu,  1 Feb 2024 09:02:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EFCD141ABE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N9Tt-0RV0qu1; Thu,  1 Feb 2024 09:02:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4DDFC4037E;
	Thu,  1 Feb 2024 09:02:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4DDFC4037E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2ECAD1BF4DD
 for <devel@linuxdriverproject.org>; Thu,  1 Feb 2024 09:02:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F2D3B4021C
 for <devel@linuxdriverproject.org>; Thu,  1 Feb 2024 09:02:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F2D3B4021C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oEW4YDDfjKxb for <devel@linuxdriverproject.org>;
 Thu,  1 Feb 2024 09:02:47 +0000 (UTC)
X-Greylist: delayed 396 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 01 Feb 2024 09:02:46 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E9696401C0
Received: from mail.centiscomp.com (mail.centiscomp.com [135.125.203.239])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E9696401C0
 for <devel@driverdev.osuosl.org>; Thu,  1 Feb 2024 09:02:46 +0000 (UTC)
Received: by mail.centiscomp.com (Postfix, from userid 1002)
 id C24A5A2DBB; Thu,  1 Feb 2024 08:56:02 +0000 (UTC)
Received: by mail.centiscomp.com for <devel@driverdev.osuosl.org>;
 Thu,  1 Feb 2024 08:55:58 GMT
Message-ID: <20240201074500-0.1.bn.14wr4.0.0c7guejm18@centiscomp.com>
Date: Thu,  1 Feb 2024 08:55:58 GMT
From: =?UTF-8?Q?"Stanislav_Kov=C3=A1=C4=8D"?= <stanislav.kovac@centiscomp.com>
To: <devel@driverdev.osuosl.org>
Subject: =?UTF-8?Q?D=C3=ADly_pro_sportovn=C3=AD_vozy?=
X-Mailer: mail.centiscomp.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=centiscomp.com; s=mail; t=1706777767;
 bh=hK32N63EXg5L0mDBhcLqO7LT0yXl3sNSlyZA5k03kP0=;
 h=Date:From:To:Subject:From;
 b=GWZcV6vmKouZiP/18N1/JFmzoFuJ/+ptj2iIsDgeb5a1OKG+K4inhkWbhVmTXk7FC
 OEsbKtHUhwanaHojEIFJc1jA5/iHPoBkFcAJLRoJg7KtV7iy2Mq26xoHbJs4u+IWlQ
 dT5mDq2/DjG/r3AmV4iJ/jWBcxH1Mf8jTGXvOQM3Q3MzGAfWLEJwTQgOPs0pAG1Q2Z
 iuFusp2TmOKKKlaG1ih6hgQruYBPvEPTgvlLvoJ7xKAz99DsQ0MN0cwDMnpt+W44QX
 ZTxEyIugc/R3Sk8/jw3hFsf+T+e3fYZ7fmJvaluLD6NrRAHBgjlzu0MB6Q833zI624
 BTNvOUZw1mkqg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=centiscomp.com header.i=@centiscomp.com
 header.a=rsa-sha256 header.s=mail header.b=GWZcV6vm
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

QWhvaiEKCkpzbWUgdMO9bSBuYWTFoWVuY8WvIG1vdG9yc3BvcnR1IGEgdHVuaW5ndSwga3RlxZnD
rSBzZSBha3Rpdm7EmyBwb2TDrWxlasOtIG5hIHByb3N0xZllZMOtIGRyaWZ0b3bDoW7DrS4KCk5h
xaFlIHJvenPDoWhsw6kgdGVjaG5pY2vDqSB6ZHJvamUgYSB6a3XFoWVub3N0aSBuw6FtIHVtb8W+
xYh1asOtIG5hdnJob3ZhdCBhIHZ5csOhYsSbdCBuZWprdmFsaXRuxJtqxaHDrSBrb3ZvdsOpIGTD
rWx5IHBybyBzcG9ydG92bsOtIHZvenksIHplam3DqW5hIEJNVy4KCk9icmFjw61tIHNlIG5hIFbD
oXMsIHByb3Rvxb5lIHNlIHphbcSbxZl1amVtZSBuYSBvYnNsdWh1IHZlbGtvb2JjaG9kbsOtY2gg
esOha2F6bsOta8WvLCBjb8W+IG7DoW0gdW1vxb7FiHVqZSBuYWLDrXpldCBrb25rdXJlbmNlc2No
b3Buw6kgY2VueS4KCkRvc3TDoXbDoW1lIGRvdGF6eSBvaGxlZG7EmyBuw6FrdXB1IG5hxaFpY2gg
cHJvZHVrdMWvIHogY2Vsw6lobyBzdsSbdGEuIE5hxaFlIHBvZG3DrW5reSB1bW/FvsWIdWrDrSBw
YXJ0bmVyxa9tIGRvc2Fob3ZhdCB2eXNva8O9Y2ggbWFyxb7DrSBuYSBtZXppbsOhcm9kbsOtY2gg
dHJ6w61jaC4KCk3Fr8W+ZW1lIHDFmWVkc3Rhdml0IG5hxaFlIHBvcnRmb2xpbz8KCgpTIHDFmcOh
dGVsc2vDvW0gcG96ZHJhdmVtClN0YW5pc2xhdiBLb3bDocSNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51
eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
