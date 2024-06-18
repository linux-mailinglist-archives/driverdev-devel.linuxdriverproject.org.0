Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F407F90DD19
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2024 22:12:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 933BA42A95;
	Tue, 18 Jun 2024 20:12:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XuklkAdNmj8m; Tue, 18 Jun 2024 20:12:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4785E42ABE
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4785E42ABE;
	Tue, 18 Jun 2024 20:12:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 083731BF4DD
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2024 20:12:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E3DE561070
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2024 20:12:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LDRz8784NyVy for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2024 20:12:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=67.219.246.1;
 helo=mail1.bemta31.messagelabs.com; envelope-from=hello@way2wealth.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5020F6081E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5020F6081E
Received: from mail1.bemta31.messagelabs.com (mail1.bemta31.messagelabs.com
 [67.219.246.1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5020F6081E
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2024 20:12:36 +0000 (UTC)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrKKsWRWlGSWpSXmKPExsUyv3SmiK7mq8I
 0g6unuS0ON2RYzNrxicXiy6bvrBaNu56xWOx/NJ3NYuOuf0wWj/eHWew584vdoun/HkaL0wsa
 2C1erL3HbjH51Wx2i13LOpkspm01tPh3aR6rxdJP09kt/iyaym7RcbCfyeLou6XMFg/7O1kcR
 DzWnZ/B4rHuA6/Htun/mT1mnDvE7nFv32EWj1+fZjB57Jx1l93jw8c4j1u7PrF4TF66hcnj/Z
 sbzB7nL2l7LPq7gsmjsWEnk8ftZ9tYAvijWDPzkvIrElgz7q77wlTwjrvi1q5ZTA2MzVxdjFw
 cQgIbGSU+v21jgXDWMEpMn9PIDuEsZJS4teIDYxcjJ5DTwiixb70xiM0rIChxcuYTFoi4msSJ
 bV1gtrCAuMS931fYQWwWAW2JzxP/M0LUe0rse/WFqYuRg0NCIE1i5WMlkDCbgJLEmr//WUFsE
 QEFiZ+npjKD2MwCehI3pk5hg7C1JZYtfM0M0soMtOprV8kERv5ZSI6YhaRjFpKOWQgdCxhZVj
 GaFacWlaUW6Rqa6iUVZaZnlOQmZuboJVbpJuqVFuumJhaX6BrqJZYX66UWF+sVV+Ym56To5aW
 WbGIExn1KEUPHDsbPexr1DzFKcjApifLufJSfJsSXlJ9SmZFYnBFfVJqTWnyIUYaDQ0mC9+3D
 wjQhwaLU9NSKtMwcYAqCSUtw8CiJ8Eq8AErzFhck5hZnpkOkTjEac3zd1nWAmePk5/0HmYVY8
 vLzUqXEeXlfApUKgJRmlObBDYKlxkuMslLCvIwMDAxCPAWpRbmZJajyrxjFORiVhHmFnwJN4c
 nMK4Hb9wroFCagU/rS80BOKUlESEk1ME1cv1lQpPpx7//D3KweD4y/PnGQ+m52bZNlxhJVffe
 7E73tNRds3fZo78pFklfl82xtVzDonwprnZDJIyuxQf2B3RzOT/r5Gn1u691Utx2zPXrELTCZ
 y/qY53rfqU0Jjpa7fkxsWd/E8P7/OYXnRg2rF7EltE1mPrdMtjB+4+o23X7lq99rNtdZuS9MP
 Bcxo0d/tsbqmeHzsx3OvJw39X9X1Z+o+SIel/n+HF079Y72j4SXX/qefpSezJ1VU33sbAnT4b
 kWs9jqa3Is+y80bJnw2fbi7Sv/5l64x3LFwUk7dme7+Y9lO34u6KoKOpj1h+XCvrRbPo9aLpV
 J+O/lO1XpImvCfklHasku3ZWcKTZKLMUZiYZazEXFiQBiL7KaCAQAAA==
X-Env-Sender: hello@way2wealth.com
X-Msg-Ref: server-4.tower-680.messagelabs.com!1718741537!4330!4
X-Originating-IP: [159.117.153.20]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.112.2; banners=way2wealth.com,-,-
X-VirusChecked: Checked
Received: (qmail 27438 invoked from network); 18 Jun 2024 20:12:24 -0000
Received: from unknown (HELO w2wmailserver.localdomain) (159.117.153.20)
 by server-4.tower-680.messagelabs.com with SMTP; 18 Jun 2024 20:12:24 -0000
Received: from w2wmailserver.localdomain (w2wmailserver [192.168.1.5])
 by w2wmailserver.localdomain (Postfix) with ESMTP id 5F6CC86B2914;
 Wed, 19 Jun 2024 01:42:24 +0530 (IST)
Received: from w2wmailserver.localdomain (localhost [127.0.0.1])
 by w2wmailserver.localdomain (Postfix) with ESMTP id 5E3551806FD74;
 Wed, 19 Jun 2024 01:42:24 +0530 (IST)
Received: from way2wealth.com (localhost [127.0.0.1])
 by w2wmailserver.localdomain (Postfix) with ESMTP id 526B41806FD73;
 Wed, 19 Jun 2024 01:42:24 +0530 (IST)
Received: from hello@way2wealth.com([197.211.58.118]) by PME Mail With Id
 1718741543211.16084; Wed, 19 Jun 2024 01:42:23 +0530 (IST)
MIME-Version: 1.0
Subject: 2.500.000 Euro
Date: Wed, 19 Jun 2024 01:42:24 +0530 (IST)
Message-ID: <2024619142240.1718741543211.16084.PostMaster@way2wealth.com>
X-MailServer: PostMaster Enterprise v9.01-RC2 on [10.164.253.227] Linux
 (3.10.0-1160.108.1.el7.x86_64)
From: hello <hello@way2wealth.com>
To: hello <hello@way2wealth.com>
Content-Description: Mail message body
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=way2wealth.com; 
 s=w2wdkim04012023; t=1718741554; i=@way2wealth.com;
 bh=jv/e1YMVqr9FHq0VvF/aGarz5z7SiBOpeoR/ytpTtEY=;
 h=MIME-Version:Reply-To:Subject:Date:Message-ID:From:To:
 Content-Type:Content-Transfer-Encoding:Content-Description;
 b=aP0jqxBaXyuAMwFpeEcRAp5ft3cgWDn+4z1nngf70FPv6MHN9MPIRfsUceZ3aeFB2
 rZw6HowP5oScUhOPHLQa/0YziZOBxi5VigjtCj8omuAa66cDNgOqChhZh8uH4cRP3T
 MMxjrX2dNWTbvxxBt0I91IJ/mchxFZ39nY5gtEl0O+gekaTt8nn2CXjaz30Rza8dMO
 oDxZxUrBbPotMNBapCGSskrX683k3oco5W0Oyy8Cqul9aXM3lYSvUdfVveIdY/YNYI
 dfyvyOq6wmEywm7fGTZ34YNRihDnlBybyVeFQQmm+nhpD3Go9yDTY+mlQYDlRc4ntL
 GMiWtz5CITSUA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=way2wealth.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=way2wealth.com header.i=@way2wealth.com
 header.a=rsa-sha256 header.s=w2wdkim04012023 header.b=aP0jqxBa
X-Mailman-Original-Authentication-Results: mx.messagelabs.com;
 dkim=none (message not 
 signed); dmarc=fail (p=quarantine sp=none adkim=r aspf=r) 
 header.from=way2wealth.com
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
Reply-To: alfagroupfridman@outlook.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hallo, ich, Mikhail Fridman, werde Ihnen im Namen einer Wohlt=E4tigkeitsorg=
anisation 2.500.000 Euro aus einem Teil meiner Investition spenden. Bitte a=
ntworten Sie mit Ihren Anspruchsdetails. Ich erwarte Ihre fr=FCheste Antwor=
t und

Gott sch=FCtze dich.
Viel Gl=FCck, Mikhail Fridman
<html>
<head>
**************** CAUTION - Disclaimer ***************** =

This e-mail message may contain confidential, proprietary or legally privil=
eged information, intended solely for the use of the addressee(s). If you h=
ave erroneously received this message or are not the intended recipient, pl=
ease delete it immediately and notify the sender. Further, you are not to c=
opy, disclose, or distribute this e-mail or its contents to any other perso=
n and any such actions are unlawful. Way2Wealth Securities Pvt. Ltd & its s=
ubsidiaries do not guarantee the accuracy, completeness or integrity of/ove=
r the contents of the information/data contained in the mailer and is not r=
esponsible for any errors or omissions or for the results obtained from the=
 use of such Data. Way2Wealth Brokers Pvt. Ltd & its subsidiaries reserve t=
he right to monitor and review the content of all messages sent to or from =
this e-mail address. Before opening any attachments please check them for v=
iruses and defects. =

*** Way2Wealth ******** End of Disclaimer ******** Way2Wealth ***
<!-- End Save for Web Slices -->
</body>
</html>

--------------------------------------------
Way2Wealth Brokers Pvt Ltd, Bangalore, India



______________________________________________________________________
This email has been scanned by the Symantec Email Security.cloud service.
For more information please visit http://www.symanteccloud.com
______________________________________________________________________
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
