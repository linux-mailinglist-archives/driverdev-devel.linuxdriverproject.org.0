Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 838E283FBEA
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jan 2024 02:45:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB4C382214;
	Mon, 29 Jan 2024 01:45:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB4C382214
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZrvUXEpo3iEu; Mon, 29 Jan 2024 01:45:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF64182028;
	Mon, 29 Jan 2024 01:45:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF64182028
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 46DEB1BF8A8
 for <devel@linuxdriverproject.org>; Mon, 29 Jan 2024 01:45:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 20CC141610
 for <devel@linuxdriverproject.org>; Mon, 29 Jan 2024 01:45:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 20CC141610
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VRglkxuWk3d4 for <devel@linuxdriverproject.org>;
 Mon, 29 Jan 2024 01:45:01 +0000 (UTC)
X-Greylist: delayed 2879 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 29 Jan 2024 01:45:00 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8CF9E4160D
Received: from mail4.meandermc.nl (mail4.meandermc.nl [87.213.170.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8CF9E4160D
 for <devel@linuxdriverproject.org>; Mon, 29 Jan 2024 01:45:00 +0000 (UTC)
Received: from mail4.meandermc.nl (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 9366CFC4E5;
 Mon, 29 Jan 2024 01:34:16 +0100 (CET)
Received: from mail4.meandermc.nl (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 42EE3FE6B9;
 Mon, 29 Jan 2024 01:08:36 +0100 (CET)
Received: from SRV-EXCH-04.meandermc.vineta.nl (unknown [10.1.129.124])
 by mail4.meandermc.nl (Postfix) with ESMTPS;
 Mon, 29 Jan 2024 01:08:36 +0100 (CET)
Received: from SRV-EXCH-03.meandermc.vineta.nl (10.1.129.123) by
 SRV-EXCH-04.meandermc.vineta.nl (10.1.129.124) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Jan 2024 01:08:31 +0100
Received: from User (87.213.170.55) by SRV-EXCH-03.meandermc.vineta.nl
 (10.1.129.123) with Microsoft SMTP Server id 15.1.2507.35 via Frontend
 Transport; Mon, 29 Jan 2024 01:08:26 +0100
From: Anna Pechorin <ap@meandermc.nl>
Subject: PLS TARRY NOT
Date: Sun, 28 Jan 2024 16:08:54 -0800
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-ID: <51aa5be0-7be1-4999-aaca-3420ce941e2e@SRV-EXCH-03.meandermc.vineta.nl>
To: Undisclosed recipients:;
X-TM-AS-Product-Ver: IMSVA-9.1.0.2164-9.0.0.1002-28148.003
X-TM-AS-Result: No-12-125.490400-8.000000
X-TMASE-MatchedRID: lMydM31RRuK6CsRJUdy6l6roPbyANljgUTBIPA569SGpFMAdzAAQJx2r
 rGe8rZbLO69+IARBiUM6gbIYokhQqc+4AFSJFoPJdnyATUcB4BtPNXOxcJBlasCUWF7FtWK6V72
 g61ngi5/CllxMzB5TMFqhASDshmIptNiL0CdBOIBswYo64ufkVcMFDjMfv7kDyJVZtTPPygVFRI
 +dOD7xzBJWbLCsbi+3Ac+HSbz+uQe2pjaFaKwUXRTs4T19wprxhgI0uYcq9JVTuaxdsRS+eIRbL
 zRlCBqQicNG1XIbG2INU0tjWb0+G3RtYUO/i0PCwfxJy/eAZt6cark75pTJS5s2IS2lEcJQRKgE
 yRnnaFsndTfoiM9wUpGTpe1iiCJqbvbTg9u7uxTUx1/q4OzBrbirEcQmvRfkdnYdrEck9S5JfaM
 WBkhEfez3UZSeD4Xbn7EnIyHmjEcch7F6OKIyHN0H8LFZNFG7kU+Nsd2ZE1iBDY21C0yOQZb0vh
 Oj8ZDvXhVYGf5ZauUCtHRwlKxHgY5bUxghS/O1ftwZ3X11IV0=
X-TM-AS-User-Approved-Sender: No;No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 12-125.490400-10.000000
X-TMASE-Version: IMSVA-9.1.0.2164-9.0.1002-28148.003
X-TM-SNTS-SMTP: E59BA45070BF5BA653F23207139C590195783F307069BDEDEB9ADE39B8AB228F2000:8
X-TM-AS-GCONF: 00
X-TMASE-SNAP-Result: Not scanned
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meandermc.nl; s=20210113; t=1706488462;
 bh=QYd4Z+K74vOne843bZG/bUMgA+xpBiNIlrMM6m7vgsk=; h=From:Date:To;
 b=jSiWugVJVGMIdUdQC1nCTFc/W9zcGF4fw7NFMFsT6nEg8b/2L6xSvDSQGPCtIRbtl
 /6isB+h6ywwoi2OaUIde/QHamCwAR54QzhOzS+BFmPi76Wmrl2vUw/oJd8XfdoxPi4
 eU9N7oWcbiAJDNSyaaFdKf+Ycaqlpbo9A2IM1fL9NKAE+9xyfwFb7m1f9ykFhQ2EUI
 Z4hh4FK/3VMG5OffYsTdgFDjN9cwVkukPxxu3mXOmH7LpEoYz2kpfZP9hLI4T/OaRC
 /6CC6sXgQHihkku91VB4FnrazJ1+yJ9tPxLmm4gXQMIkN9wGuyyFlv+fsTig1RVchK
 AUYlYFueTXUoA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=meandermc.nl header.i=@meandermc.nl
 header.a=rsa-sha256 header.s=20210113 header.b=jSiWugVJ
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
Reply-To: basicinvest11@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


I hope you are well and high in spirit? Before I continue, let me humbly apologize for coming into your space unsolicited. Nonetheless, I take solace in the fact that it is with the best intention and for our mutual benefit.

I chose you among other contacts that I came across in my search for someone who can partner with me in investment venture. It took a great deal of brain storming for me to arrive at this decision owing to my present predicament, which I will explain to you in my follow up email. I hope that my contact with you will be private, confidential and fruitful.

Presently I am totally indisposed to carry out financial transactions due to restrictions relating to the suspicious death of my husband, Ivan Pechorin who was totally against the Ukraine war. Before long it would be discovered that President Vladimir Putin murdered my husband. My strongest desire is to partner with you in investing my family money domiciled outside the shores of Russia and you becoming my fund manager. I have no problem investing this money in your country if it offers investment friendly environment. 

It will be an absolute pleasure, if you would have the wherewithal to handle this project to my satisfaction. Every detail concerning this project would be laid bare to you upon indication of your interest.

Please strictly respond to basicinvest11@outlook.com


Best regards

Anna Pechorin.
***************************DISCLAIMER****************************
De informatie in dit e-mail bericht is uitsluitend bestemd
voor de geadresseerde. Verstrekking aan en gebruik door
anderen is niet toegestaan. Door de elektronische verzending
van het bericht kunnen er geen rechten worden ontleend aan de
informatie.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
