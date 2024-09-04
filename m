Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E66BF96CBD3
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Sep 2024 02:36:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8287740BAC;
	Thu,  5 Sep 2024 00:36:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xS6oQU52ERRk; Thu,  5 Sep 2024 00:36:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4AE7940B98
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4AE7940B98;
	Thu,  5 Sep 2024 00:36:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1B0D31BF834
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2024 00:36:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1533A812E8
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2024 00:36:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P6Jq3HYAJ9Og for <devel@linuxdriverproject.org>;
 Thu,  5 Sep 2024 00:36:43 +0000 (UTC)
X-Greylist: delayed 16180 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 05 Sep 2024 00:36:42 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 01832812DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 01832812DC
Received: from esa.hc1735-10.eu.iphmx.com (esa.hc1735-10.eu.iphmx.com
 [207.54.69.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 01832812DC
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2024 00:36:42 +0000 (UTC)
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
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=adcom.com.tw
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
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
