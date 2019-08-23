Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB689A925
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Aug 2019 09:51:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2E87487C57;
	Fri, 23 Aug 2019 07:51:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lLvcE2LkC+lg; Fri, 23 Aug 2019 07:51:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 03B8D87C22;
	Fri, 23 Aug 2019 07:51:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6FCF51BF328
 for <devel@linuxdriverproject.org>; Fri, 23 Aug 2019 07:51:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6D2668698B
 for <devel@linuxdriverproject.org>; Fri, 23 Aug 2019 07:51:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R46il_FPEEFh for <devel@linuxdriverproject.org>;
 Fri, 23 Aug 2019 07:51:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.automatics-control.eu (mail.automatics-control.eu
 [80.211.144.215])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 99D2486985
 for <devel@driverdev.osuosl.org>; Fri, 23 Aug 2019 07:51:21 +0000 (UTC)
Received: by mail.automatics-control.eu (Postfix, from userid 1001)
 id 0B7F5A1B6B; Fri, 23 Aug 2019 09:45:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=automatics-control.eu; s=mail; t=1566546361;
 bh=NjLcrs3cCMbbo+n0H6fjGJqdIYCaDUtkMzaQjEdJoS8=;
 h=Date:From:To:Subject:From;
 b=ncA5GjdIPfNxc23xzRfYpfqhGLpK1yw1g1w5sTpAiyiHCKAvN19qmzMu75Sy15y0Y
 P7FTmekyCK52gBQj/8NZIcQPqV+yECBgZx/qiPs8SoZsZ6X9q0a1Fq01RxQy5hDB0D
 lLDolovQDXAeBCrnj/IstBE+3ts1b8jSF/eokHMs=
Received: by mail.automatics-control.eu for <devel@driverdev.osuosl.org>;
 Fri, 23 Aug 2019 07:45:55 GMT
Message-ID: <20190823084500-0.1.p.2r3i.0.jr0lutsqos@automatics-control.eu>
Date: Fri, 23 Aug 2019 07:45:55 GMT
From: "Kamil Adamec" <kamil.adamec@automatics-control.eu>
To: <devel@driverdev.osuosl.org>
Subject: =?UTF-8?Q?Dodate=C4=8Dn=C3=A9_zdroje?=
X-Mailer: mail.automatics-control.eu
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RG9icsO9IGRlbiEKCsW9aXZub3N0bsOta8WvbSDEjWFzdG8gc3RvasOtIHYgY2VzdMSbIGsgZG9z
YcW+ZW7DrSDDunNwxJtjaHUgbsOtemvDoSDDunJvdmXFiCBwcm92b3puw61jaCB6ZHJvasWvIG5h
IG7DoWt1cCBtYXRlcmnDoWx1LCB6Ym/FvsOtIG5lYm8gc3Vyb3ZpbiB6IGTFr3ZvZHUgbmFwxZku
IG5lemFwbGFjZW7DrSBmYWt0dXIgKG5lemFwbGFjZW7DrSBvZCBkb2RhdmF0ZWzFrywgcHJvZGxv
dcW+ZW7DoSBzcGxhdG5vc3QgYXBvZC4pLiBWIHTDqXRvIG9ibGFzdGkganNtZSBqacW+IHBvbW9o
bGkgxZlhZMSbIGZpcmVtLCBrdGVyw6kgbW9obHkgZMOta3kgesOtc2vDoW7DrSBuw6F2cmF0bsOp
aG8gZmluYW5jb3bDoW7DrSByZWFsaXpvdmF0IHN2w6kga2zDrcSNb3bDqSBwbMOhbnkuCgpKc2Vt
IHBhcnRuZXJlbSBtbm9oYSBzcG9sZcSNbm9zdMOtLCBqZWppY2jFviDEjWlubm9zdCBqZSBzcm92
bmF0ZWxuw6EgcyB0b3UgVmHFocOtIGEgemEga29vcGVyYWNpIHMgbsOhbWkgesOtc2vDoXRlIGJv
bnVzIC0gcnljaGzDqSBzcGxhY2Vuw60gdmUgdsO9xaFpIGHFviA0IHNwbMOhdGVrLgoKRG92b2x0
ZSwgYWJ5Y2hvbSBWw6FzIGtvbnRha3RvdmFsaSB6YSDDusSNZWxlbSBwcm92ZWRlbsOtIGFuYWzD
vXp5IG1vxb5ub3N0w60gcG9tb2NpIGZpbmFuY292w6Fuw60uIEtkeSBieWNoIG1vaGwgemF2b2xh
dD8KCgpTIHBvemRyYXZlbQpLYW1pbCBBZGFtZWMKQWNjb3VudCBNYW5hZ2VyCnd3dy5hdXRvbWF0
aWNzLWNvbnRyb2wuZXUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==
