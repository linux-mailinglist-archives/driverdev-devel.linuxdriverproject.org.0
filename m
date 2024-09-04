Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA2696CBD6
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Sep 2024 02:37:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 146F740B9E;
	Thu,  5 Sep 2024 00:37:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9SYC1t7NAZxG; Thu,  5 Sep 2024 00:37:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 026C240B9B
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 026C240B9B;
	Thu,  5 Sep 2024 00:36:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F26181BF834
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2024 00:36:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DF6D14015F
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2024 00:36:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vzl-Yzomqv5U for <devel@linuxdriverproject.org>;
 Thu,  5 Sep 2024 00:36:58 +0000 (UTC)
X-Greylist: delayed 16194 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 05 Sep 2024 00:36:56 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3D6434010E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D6434010E
Received: from esa.hc1735-10.eu.iphmx.com (esa.hc1735-10.eu.iphmx.com
 [207.54.69.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3D6434010E
 for <devel@driverdev.osuosl.org>; Thu,  5 Sep 2024 00:36:56 +0000 (UTC)
X-CSE-ConnectionGUID: vr/MMUk3Seak0rFMItDJrg==
X-CSE-MsgGUID: cCRLq3RzS4WLdL0rMIfYDA==
Message-Id: <529cf4$82ge8@ob1.hc1735-10.eu.iphmx.com>
X-IronPort-RemoteIP: 31.6.50.70
X-IronPort-MID: 8470984
X-IronPort-Reputation: None
X-IronPort-Listener: MailFlow-Ext
X-IronPort-SenderGroup: RELAY_sysmail
X-IronPort-MailFlowPolicy: $RELAYED
X-ThreatScanner-Verdict: Positive
Received: from unknown (HELO [31.6.50.70]) ([31.6.50.70])
 by ob1.hc1735-10.eu.iphmx.com with ESMTP; 04 Sep 2024 22:06:53 +0200
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Re:
To: Recipients <sales@adcom.com.tw>
From: "Mr.Karl Albrecht" <sales@adcom.com.tw>
Date: Wed, 04 Sep 2024 23:06:52 +0300
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=adcom.com.tw
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 spf=fail smtp.mailfrom=adcom.com.tw
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
Reply-To: info.beateheiste@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hallo,

Ich bin Karl Albrecht, ein Vertreter von Frau Beate Heister von der Siepman=
n-Stiftung, einem Investitionsentwicklungsprogramm, das sich der Unterst=FC=
tzung der Gesellschaft widmet. Durch Beobachtungen haben wir herausgefunden=
, dass viele Unternehmerinnen und Einzelpersonen in unserem Land Schwierigk=
eiten haben, finanzielle Unterst=FCtzung f=FCr Investitionen und den Aufbau=
 einer Karriere zu erhalten. Wir freuen uns daher, Ihnen einen finanziellen=
 Zuschuss von 2.000.000,00 Euro anbieten zu k=F6nnen. Bitte kontaktieren Si=
e die folgende E-Mail-Adresse, um weitere Informationen zur Beantragung Ihr=
er Mittel zu erhalten!
E-Mail: info.beateheiste@gmail.com
Mit freundlichen Gr=FC=DFen,
Frau Beate Heister
Copyright =A92024 The Beate Heister Foundation. Alle Rechte vorbehalten.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
