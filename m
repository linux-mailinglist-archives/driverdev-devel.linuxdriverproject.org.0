Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4646C86F49C
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 Mar 2024 12:41:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C58C8820A5;
	Sun,  3 Mar 2024 11:41:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Uw4sE1LCXWd2; Sun,  3 Mar 2024 11:41:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 06A76820BD
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 06A76820BD;
	Sun,  3 Mar 2024 11:41:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D4C871BF2A6
 for <devel@linuxdriverproject.org>; Sun,  3 Mar 2024 11:41:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C1A9D4085E
 for <devel@linuxdriverproject.org>; Sun,  3 Mar 2024 11:41:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JJZC4_8xYY26 for <devel@linuxdriverproject.org>;
 Sun,  3 Mar 2024 11:41:11 +0000 (UTC)
X-Greylist: delayed 63625 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 03 Mar 2024 11:41:11 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6CD3240859
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6CD3240859
Received-SPF: Permerror (mailfrom) identity=mailfrom; client-ip=186.113.7.92;
 helo=mail.sticcoltel.co; envelope-from=jadominguez@sticcoltel.co;
 receiver=<UNKNOWN> 
Received: from mail.sticcoltel.co (unknown [186.113.7.92])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6CD3240859
 for <devel@driverdev.osuosl.org>; Sun,  3 Mar 2024 11:41:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.sticcoltel.co (Postfix) with ESMTP id DA4C516B92726;
 Sat,  2 Mar 2024 11:12:43 -0500 (-05)
Received: from mail.sticcoltel.co ([127.0.0.1])
 by localhost (mail.sticcoltel.co [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id ybON_0H2sWb5; Sat,  2 Mar 2024 11:12:43 -0500 (-05)
Received: from localhost (localhost [127.0.0.1])
 by mail.sticcoltel.co (Postfix) with ESMTP id 56E771560F502;
 Sat,  2 Mar 2024 07:12:08 -0500 (-05)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.sticcoltel.co 56E771560F502
X-Virus-Scanned: amavisd-new at sticcoltel.co
Received: from mail.sticcoltel.co ([127.0.0.1])
 by localhost (mail.sticcoltel.co [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id gUQalfnggtCE; Sat,  2 Mar 2024 07:12:08 -0500 (-05)
Received: from EC2AMAZ-I2OQVV3.us-east-2.compute.internal
 (ec2-3-140-195-102.us-east-2.compute.amazonaws.com [3.140.195.102])
 by mail.sticcoltel.co (Postfix) with ESMTPSA id 9C8301560F93B;
 Sat,  2 Mar 2024 05:52:19 -0500 (-05)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Kreditangebot!!! @ 1.5%
To: Recipients <jadominguez@sticcoltel.co>
From: "Thomas Mark" <jadominguez@sticcoltel.co>
Date: Sat, 02 Mar 2024 10:50:00 +0000
Message-Id: <20240302105220.9C8301560F93B@mail.sticcoltel.co>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sticcoltel.co; 
 s=76D537E4-BCFA-11ED-B719-8355120AF0F9; t=1709381528;
 bh=Ar2iaLaYRTJYNc+ohcjENhHAPwCijW86qaDECh2eoiE=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=aCu6HXD0+cQkWv3dVgtpC93UqktdzijJTLIOz0g37KDotPlfA8wPHY826EczyPWBs
 7q6AEBXsvnPWyFGoj8o9FH62nztxi4c0+6EgFEZ5B4jleT8hBwngvQkGR21nkQQ4OP
 5n7W0DxGEfxjVMO2cp3G8qH4ec/MMtZENl0AHKOSboOVH5qAsPXh3mRtD7Ui/6DByN
 5RkpeRzcLjbscDStuH51+/vuHMaS+LOs4CWez8X0DWj23FlKWy+tEpDVlcm8XHM8Q2
 riqKR5PhYrj9OpQ677T6yZ/9cRob2SqrsINa7SRVRBAlJ62KeIKVgQEWL9kj2as1Sa
 abRmZHOKx/yLg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=sticcoltel.co
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=sticcoltel.co header.i=@sticcoltel.co
 header.a=rsa-sha256 header.s=76D537E4-BCFA-11ED-B719-8355120AF0F9
 header.b=aCu6HXD0
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
