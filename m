Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C3889717C
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Apr 2024 15:47:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 51632417AF;
	Wed,  3 Apr 2024 13:47:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b7vtLiNuwN5X; Wed,  3 Apr 2024 13:47:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2253E417BD
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2253E417BD;
	Wed,  3 Apr 2024 13:47:12 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B30F21BF3C5
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  3 Apr 2024 13:47:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ABDE54150F
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  3 Apr 2024 13:47:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oSR68fT60WeC for <driverdev-devel@linuxdriverproject.org>;
 Wed,  3 Apr 2024 13:47:08 +0000 (UTC)
X-Greylist: delayed 645 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 03 Apr 2024 13:47:07 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 50513414E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 50513414E7
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=210.134.168.88;
 helo=sp11.canonet.ne.jp; envelope-from=tomo@eikoujm.co.jp; receiver=<UNKNOWN> 
Received: from sp11.canonet.ne.jp (sp11.canonet.ne.jp [210.134.168.88])
 by smtp4.osuosl.org (Postfix) with ESMTP id 50513414E7
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  3 Apr 2024 13:47:07 +0000 (UTC)
Received: from csp11.canonet.ne.jp (unknown [172.21.160.131])
 by sp11.canonet.ne.jp (Postfix) with ESMTP id 576061E036A;
 Wed,  3 Apr 2024 22:36:18 +0900 (JST)
Received: from echeck11.canonet.ne.jp ([172.21.160.121]) by csp1 with ESMTP
 id s0mor0NooCOSJs0moroN9n; Wed, 03 Apr 2024 22:36:18 +0900
X-CNT-CMCheck-Reason: "undefined", "v=2.4 cv=J5UUUCrS c=1 sm=1 tr=0
 ts=660d5b52 cx=g_jp:t_eml p=WotfXJlen1oA:10 p=qerDZyjjeX0A:10
 p=p678dXfVhRPiRtrKr1m5:22 a=cYGYO7ts52rupuxT5MoNxg==:117
 a=yr9NA9NbXb0B05yJHQEWeQ==:17 a=PlGk70OYzacA:10 a=-CRmgG0JhlAA:10
 a=raytVjVEu-sA:10 a=x7bEGLp0ZPQA:10 a=pGLkceISAAAA:8 a=rDmazCrL5QKKd7icwNAA:9
 a=jiObf9B0YAUA:10 a=6C1zgqZrgXIA:10 a=26BnIGjCjCHlqFxHizs-:22
 a=xo5jKAKm-U-Zyk2_beg_:22"
X-CNT-CMCheck-Score: 97.00
Received: from echeck11.canonet.ne.jp (localhost [127.0.0.1])
 by esets.canonet.ne.jp (Postfix) with ESMTP id 18A231C021D;
 Wed,  3 Apr 2024 22:36:18 +0900 (JST)
X-Virus-Scanner: This message was checked by ESET Mail Security
 for Linux/BSD. For more information on ESET Mail Security,
 please, visit our website: http://www.eset.com/.
Received: from smtp11.canonet.ne.jp (unknown [172.21.160.101])
 by echeck11.canonet.ne.jp (Postfix) with ESMTP id DB1931C0250;
 Wed,  3 Apr 2024 22:36:17 +0900 (JST)
Received: from eikoujm.co.jp (webmail.canonet.ne.jp [210.134.169.250])
 by smtp11.canonet.ne.jp (Postfix) with ESMTPA id 2C1CB15F962;
 Wed,  3 Apr 2024 22:36:17 +0900 (JST)
MIME-Version: 1.0
Message-ID: <20240403133617.00003484.0614@eikoujm.co.jp>
Date: Wed, 03 Apr 2024 22:36:17 +0900
From: "Alfred Michael" <tomo@eikoujm.co.jp>
To: <d@eikoujm.co.jp>
Subject: 
X-Priority: 3
ORGANIZATION: Alfred Michael
X-MAILER: Active! mail
X-EsetResult: clean, %VIRUSNAME%
X-ESET-AS: R=SPAM; S=100; OP=CALC; TIME=1712151378; VERSION=7969; MC=1059799506;
 ID=981023032; TRN=14; CRV=254; IPC=210.134.169.250; SP=4; SIPS=1; PI=5; F=0
X-I-ESET-AS: RN=1515:0,1525;RNP=alfredmichael1978@gmail.com
X-ESET-Antispam: SPAM
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=eikoujm.co.jp
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
Reply-To: alfredmichael1978@gmail.com
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


Hello ,

I am barrister Alfred Michael, I am making an offer to you in relation to t=
he death of my late client, who was your relative before his death, leaving=
 some huge amount of money (US$13,500,000.00) in the bank, after unsuccessf=
ul attempts to find his relations here, I decided to contact you. =


For more details and information please reply to my private email (alfredmi=
chael1978@gmail.com)
.
Waiting  for your quick response.

Barrister Alfred Michael. =


...........................................................................=
...................................
Hell=F3 ,

Alfr=E9d Michael =FCgyv=E9d vagyok, aj=E1nlatot teszek =F6nnek n=E9hai =FCg=
yfelem hal=E1l=E1val kapcsolatban, aki hal=E1la el=F5tt az =F6n rokona volt=
, =E9s hatalmas =F6sszeget (13 500 000,00 USD) hagyott a bankban, miut=E1n =
sikertelen=FCl pr=F3b=E1lt=E1k megtal=E1lni. az itteni kapcsolatait, =FAgy =
d=F6nt=F6ttem, hogy felveszem =D6nnel a kapcsolatot.

Tov=E1bbi r=E9szletek=E9rt =E9s inform=E1ci=F3k=E9rt k=E9rj=FCk, v=E1laszol=
jon priv=E1t e-mailemre (alfredmichael1978@gmail.com)
.
V=E1rom gyors v=E1lasz=E1t.

Alfr=E9d Michael =FCgyv=E9d.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
