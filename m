Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D667D86F9B4
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Mar 2024 06:49:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 17BDE60B36;
	Mon,  4 Mar 2024 05:49:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0E7hwZ5l-Uwe; Mon,  4 Mar 2024 05:49:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 405C660B38
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 405C660B38;
	Mon,  4 Mar 2024 05:49:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7D2BC1BF59B
 for <devel@linuxdriverproject.org>; Mon,  4 Mar 2024 05:49:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 77C4D81F69
 for <devel@linuxdriverproject.org>; Mon,  4 Mar 2024 05:49:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jPXIoUFJ43Ea for <devel@linuxdriverproject.org>;
 Mon,  4 Mar 2024 05:49:35 +0000 (UTC)
X-Greylist: delayed 128911 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 04 Mar 2024 05:49:34 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 924EF81F66
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 924EF81F66
Received-SPF: Permerror (mailfrom) identity=mailfrom; client-ip=186.113.7.92;
 helo=mail.sticcoltel.co; envelope-from=jadominguez@sticcoltel.co;
 receiver=<UNKNOWN> 
Received: from mail.sticcoltel.co (unknown [186.113.7.92])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 924EF81F66
 for <devel@linuxdriverproject.org>; Mon,  4 Mar 2024 05:49:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.sticcoltel.co (Postfix) with ESMTP id 7F3D416B974BC;
 Sat,  2 Mar 2024 11:13:23 -0500 (-05)
Received: from mail.sticcoltel.co ([127.0.0.1])
 by localhost (mail.sticcoltel.co [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id WlmpHaYhILx9; Sat,  2 Mar 2024 11:13:23 -0500 (-05)
Received: from localhost (localhost [127.0.0.1])
 by mail.sticcoltel.co (Postfix) with ESMTP id B09E615611256;
 Sat,  2 Mar 2024 07:12:17 -0500 (-05)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.sticcoltel.co B09E615611256
X-Virus-Scanned: amavisd-new at sticcoltel.co
Received: from mail.sticcoltel.co ([127.0.0.1])
 by localhost (mail.sticcoltel.co [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id koSyyl58rWZS; Sat,  2 Mar 2024 07:12:17 -0500 (-05)
Received: from EC2AMAZ-I2OQVV3.us-east-2.compute.internal
 (ec2-3-140-195-102.us-east-2.compute.amazonaws.com [3.140.195.102])
 by mail.sticcoltel.co (Postfix) with ESMTPSA id DB44915611107;
 Sat,  2 Mar 2024 05:52:21 -0500 (-05)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Kreditangebot!!! @ 1.5%
To: Recipients <jadominguez@sticcoltel.co>
From: "Thomas Mark" <jadominguez@sticcoltel.co>
Date: Sat, 02 Mar 2024 10:50:02 +0000
Message-Id: <20240302105222.DB44915611107@mail.sticcoltel.co>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sticcoltel.co; 
 s=76D537E4-BCFA-11ED-B719-8355120AF0F9; t=1709381537;
 bh=Ar2iaLaYRTJYNc+ohcjENhHAPwCijW86qaDECh2eoiE=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=mato14uFsymFM6zuhLJD2ZRUe2nzYdKUcmLrA+ma14npENux4QJebvWs0xfqmf1io
 JsRnc11ZX3CNifD7SSLr3A3zS7b4qhVnCHdO2t3rVo3jg0p7szTu5bliLbKRCOSC9O
 Ei7FS2I7PDKwJoL2J0jSKl/bsz1AIEUElAAhFUoxw61wSqPdYVMzzbgamYyWiEKwJY
 8DDhNrOfgzE7VyGlr/MXR4jqO1fAxqFO1BfF32k7oDUuDXxSaZYhSeS02NJtxFi7ib
 bkbl6LJ2oHONIZb/Sy5+DNx5LmH6TsKVdjYaLPqO/70cQmJSkE+HP2aIYDyMVdzBwl
 NR1S6Th8U406A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=sticcoltel.co
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=sticcoltel.co header.i=@sticcoltel.co
 header.a=rsa-sha256 header.s=76D537E4-BCFA-11ED-B719-8355120AF0F9
 header.b=mato14uF
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
Reply-To: thomaswellcometrust@skiff.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Gr=FC=DFe,

Wir freuen uns, Ihnen unsere Kreditdienstleistungen mit einem j=E4hrlichen =
Zinssatz von 1,5% anbieten zu k=F6nnen. Unsere Kreditbetr=E4ge reichen von =
20.000 Euro bis 50.000.000 Euro und wir unterst=FCtzen Sie gerne bei der Er=
f=FCllung Ihres finanziellen Bedarfs. Wenn Sie diese M=F6glichkeit interess=
ant finden, informieren Sie uns bitte. Wenn Sie unsere E-Mails nicht mehr e=
rhalten m=F6chten, senden Sie uns bitte eine E-Mail mit dem Betreff "Abmeld=
en", und wir werden Sie aus unserer Mailingliste entfernen.

Danke,

Thomas Mark
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
