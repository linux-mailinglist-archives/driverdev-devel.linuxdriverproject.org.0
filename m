Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B30F783FCBF
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jan 2024 04:29:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 486824093E;
	Mon, 29 Jan 2024 03:29:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 486824093E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hW88--kSE09E; Mon, 29 Jan 2024 03:29:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0660C4155B;
	Mon, 29 Jan 2024 03:29:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0660C4155B
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F093F1BF2A9
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 29 Jan 2024 03:29:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CB20B60AD8
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 29 Jan 2024 03:29:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB20B60AD8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sx2A94KVkdvi
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 29 Jan 2024 03:29:42 +0000 (UTC)
X-Greylist: delayed 5876 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 29 Jan 2024 03:29:42 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 030AD60ACA
Received: from mail3.meandermc.nl (mail3.meandermc.nl [87.213.170.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 030AD60ACA
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 29 Jan 2024 03:29:41 +0000 (UTC)
Received: from mail3.meandermc.nl (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 01748BF816;
 Mon, 29 Jan 2024 01:51:23 +0100 (CET)
Received: from mail3.meandermc.nl (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 25611798A2;
 Mon, 29 Jan 2024 01:10:58 +0100 (CET)
Received: from SRV-EXCH-04.meandermc.vineta.nl (unknown [10.1.129.124])
 by mail3.meandermc.nl (Postfix) with ESMTPS;
 Mon, 29 Jan 2024 01:10:58 +0100 (CET)
Received: from SRV-EXCH-03.meandermc.vineta.nl (10.1.129.123) by
 SRV-EXCH-04.meandermc.vineta.nl (10.1.129.124) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Jan 2024 01:10:53 +0100
Received: from User (87.213.170.55) by SRV-EXCH-03.meandermc.vineta.nl
 (10.1.129.123) with Microsoft SMTP Server id 15.1.2507.35 via Frontend
 Transport; Mon, 29 Jan 2024 01:10:48 +0100
From: Anna Pechorin <ap@meandermc.nl>
Subject: PLS TARRY NOT
Date: Sun, 28 Jan 2024 16:11:16 -0800
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-ID: <bace5399-35d1-4f80-a9e2-1c9cecb28348@SRV-EXCH-03.meandermc.vineta.nl>
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
X-TM-SNTS-SMTP: B3DD443E6338AF42F13D8F2719670EE404BDD461382F3B23E9BA540450254E042000:8
X-TM-AS-GCONF: 00
X-TMASE-SNAP-Result: Not scanned
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meandermc.nl; s=20210113; t=1706489491;
 bh=QYd4Z+K74vOne843bZG/bUMgA+xpBiNIlrMM6m7vgsk=; h=From:Date:To;
 b=eQqD7y+6slRrv0mO3I0LrnNAf3U9xqd4vlzruq8eJj5Aj6EUSPzvpiMYLWedkBVGh
 7k0d2PX8SYyizY2+TA2W07Sf9KxHzc2Gwi/kuXS7lPz+h4hAFIVGUUMoJby/nqbhXG
 fh77ABU9F30CNg1VUNvdyFQuSjNmangJRxmluCBig9a6AHUqOtAYunAwpT0J2dFzd3
 ixsnW+Zf6MAmjZjHGDwTL0K4T3rzZewVu39zG+URRDsWGppPndIkOHWUpU++Ku11Eh
 4Ilbt+1SRd8agMSiDBjTW7Fn5CCNrul/S7G8JwSA0TmVbe06CL4egHAFqlFdS6W2HC
 LY7MvaUX34rdA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=meandermc.nl header.i=@meandermc.nl
 header.a=rsa-sha256 header.s=20210113 header.b=eQqD7y+6
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
