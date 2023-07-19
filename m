Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 658317589F6
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Jul 2023 02:14:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 05BD760D58;
	Wed, 19 Jul 2023 00:14:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05BD760D58
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id emnewM9HKmOj; Wed, 19 Jul 2023 00:14:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C684A60B22;
	Wed, 19 Jul 2023 00:14:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C684A60B22
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EC3B71BF97D
 for <devel@linuxdriverproject.org>; Wed, 19 Jul 2023 00:14:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C638681DE0
 for <devel@linuxdriverproject.org>; Wed, 19 Jul 2023 00:14:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C638681DE0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ID47sabK84af for <devel@linuxdriverproject.org>;
 Wed, 19 Jul 2023 00:14:33 +0000 (UTC)
X-Greylist: delayed 414 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 19 Jul 2023 00:14:32 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF01181419
Received: from mail.maracanau.ce.gov.br (mail.maracanau.ce.gov.br
 [187.86.206.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BF01181419
 for <devel@linuxdriverproject.org>; Wed, 19 Jul 2023 00:14:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.maracanau.ce.gov.br (Postfix) with ESMTP id DC622B07F48
 for <devel@linuxdriverproject.org>; Tue, 18 Jul 2023 21:07:36 -0300 (-03)
Received: from mail.maracanau.ce.gov.br ([127.0.0.1])
 by localhost (mail.maracanau.ce.gov.br [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id VFenOsJxp8nc for <devel@linuxdriverproject.org>;
 Tue, 18 Jul 2023 21:07:36 -0300 (-03)
Received: from localhost (localhost [127.0.0.1])
 by mail.maracanau.ce.gov.br (Postfix) with ESMTP id B110AB09198
 for <devel@linuxdriverproject.org>; Tue, 18 Jul 2023 21:07:36 -0300 (-03)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.maracanau.ce.gov.br B110AB09198
X-Virus-Scanned: amavisd-new at maracanau.ce.gov.br
Received: from mail.maracanau.ce.gov.br ([127.0.0.1])
 by localhost (mail.maracanau.ce.gov.br [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id zJFhH__wl9lx for <devel@linuxdriverproject.org>;
 Tue, 18 Jul 2023 21:07:36 -0300 (-03)
Received: from [192.168.0.166] (unknown [105.8.1.58])
 by mail.maracanau.ce.gov.br (Postfix) with ESMTPSA id E529FB097CA
 for <devel@linuxdriverproject.org>; Tue, 18 Jul 2023 21:07:35 -0300 (-03)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: =?utf-8?b?RHVsZcW+aXTDoSB6cHLDoXZhOyDigqwgMiwwMDAsMDAwJzAwIEVVUg==?=
To: devel@linuxdriverproject.org
From: "Pan Richard Wahl" <coordenadoriasdp_camara@maracanau.ce.gov.br>
Date: Tue, 18 Jul 2023 17:07:27 -0700
Message-Id: <20230719000735.E529FB097CA@mail.maracanau.ce.gov.br>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=maracanau.ce.gov.br; 
 s=5B33696C-FA0D-11EC-880A-860953C84890; t=1689725256;
 bh=Aor/WLwl4h5zbhGzya8ajVmHiT+79UPpoXAPFDddDh4=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=UsH6Ck2goE2xttWZkwiabKbLXrJrnKjwQCY7rG911UVGYJ2fWUVM360xqbMyzF6u+
 ANXaR+NJW0TMHrI4Qd2msdUipjIpPk7cQf1+plWBzlHwS+zJs5PphHN+1Owx7O2c/h
 B0X8BhO3sUBn3/s/2uz6hdPcBSz0dXUhNEcw/NtLO7fAaujpeKPScE/5J+ElsIOmYR
 dWjQCFwow91661Wk+nGKOkiIYtJVE0ZanWDGKKUlZ93dXoY7k6WU50Z2XyYeqCebZL
 kewOwn7PSasETgVvu0cm8lybUIHDCSy9SNVlwrsahMkLLxRRSrak7JkbjkorhspUPD
 wP04cEkLe8l1Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=maracanau.ce.gov.br
 header.i=@maracanau.ce.gov.br header.a=rsa-sha256
 header.s=5B33696C-FA0D-11EC-880A-860953C84890 header.b=UsH6Ck2g
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
Reply-To: info@wahlfoundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RHJhaMO9IHByw610ZWxpLAoKSnNlbSBwYW4gUmljaGFyZCBXYWhsLCBtZWdhIHbDrXRleiA1MzMg
bWlsaW9udSAkIHYgamFja3BvdHUgTWVnYSBNaWxsaW9ucy4gRGFydWppIDUgbsOhaG9kbmUgdnli
cmFuw71tIGxpZGVtLiBQb2t1ZCBvYmRyxb7DrXRlIHRlbnRvIGUtbWFpbCwgYnlsIHbDocWhIGUt
bWFpbCB2eWJyw6FuIHBvIHJvenRvY2Vuw60ga291bGUuIFZldMWhaW51IHN2w6lobyBtYWpldGt1
IGpzZW0gcm96ZGFsIHJhZGUgY2hhcml0YXRpdm7DrWNoIG9yZ2FuaXphY8OtIGEgb3JnYW5pemFj
w60uIERvYnJvdm9sbmUganNlbSBzZSByb3pob2RsIHZlbm92YXQgdsOhbSBjw6FzdGt1IOKCrCAy
LDAwMCwwMDAnMDAgRVVSIGpha28gamVkbm9tdSB6IDUgdnlicmFuw71jaCwgYWJ5Y2ggc2kgb3Zl
cmlsIHN2w6kgdsO9aHJ5IHByb3N0cmVkbmljdHbDrW0gbsOtxb5lIHV2ZWRlbsOpIHN0csOhbmt5
IFlvdVR1YmUuCgpWSUTDjVRFIE1FIFpERSBodHRwczovL3d3dy55b3V0dWJlLmNvbS93YXRjaD92
PXRuZTAyRXhORHJ3CgpUT1RPIEpFIFbDgcWgIERBUk9WQUPDjSBLw5NEOiBbREZEVzQzMDM0Ulcy
MDIzXQoKT2Rwb3ZlenRlIG5hIHRlbnRvIGUtbWFpbCBhIHV2ZWR0ZSBrw7NkIGRhcnU6IGluZm9A
d2FobGZvdW5kYXRpb24ub3JnCgpEb3Vmw6FtLCDFvmUgdsOhbSBhIHZhxaHDrSByb2RpbmUgdWRl
bMOhbSByYWRvc3QuCgpQb3pkcmF2eSwKUGFuIFJpY2hhcmQgV2FobApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxA
bGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVj
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
