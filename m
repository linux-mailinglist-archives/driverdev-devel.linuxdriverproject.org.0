Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7272433AF9D
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 11:11:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C667A430C0;
	Mon, 15 Mar 2021 10:11:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AH4mMV0ic8tU; Mon, 15 Mar 2021 10:11:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D605D40196;
	Mon, 15 Mar 2021 10:11:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 19B951BF384
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:10:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 15CE7606CB
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:10:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rssXATKw6l_b for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 10:10:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ironportDMZ.econet.co.zw (smtp.econet.co.zw [77.246.51.158])
 by smtp3.osuosl.org (Postfix) with ESMTP id 34FB8605BA
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:10:51 +0000 (UTC)
IronPort-SDR: v0Y4k2EX8LV5t2F75ktqhmvflsm5Xegy8ogSIwVsoKr13//L5AjILcy/2M1kgupRwPni+F5O43
 qhObEtgf0k3FRAqT9Dvraq+Iqi/BS3Au0uWE1gtWZkwX4qDNbmcIKQlUpe65L9YMIRnQB8oD1d
 XATrP0t7oC+hUlY6iMbH0bGUF0sl9F0tZiPNYJwm0vFYIhoL2UPpr81iXacl/oNkRVLc88xOSx
 Y8FRWzMeKUDsv1cbgxVaWUrTetnwEPC32c8viS93izfwYHpOxA6/5j4Yqh6LBUFR6i+fAtn32F
 x1E=
IronPort-HdrOrdr: A9a23:FjpUT6nlNFRCMHbYWs+n4/yFdkHpDfKO3DAbvn1ZSRFFG/Gwvc
 aogfgdyFvIkz4XQn4tgpStP6OHTHPa+/dOkOwsFJ2lWxTrv3btEZF64eLZsl/dMgD36+I178
 ddWodkDtmYNzZHpOLbxCX9LNo62tmA98mT9ITj5lNgVxtjZa0lzyoRMHfiLmRMSANLBYU0Gf
 Onj6ItzVfNRV0tYt2/Fj05WYH4yOHjr576fQUAQycu9Qjmt0LT1JfBDxOa0h0COgkv/Z4e9w
 H+4nfEz5Tml8uewh/Yk1bJ75JMmMbwo+EzY/Cku4wwIjXohh3AXvUGZ5Sy+BQ0pO2IzXpCqq
 i0nz4Qe/1p63XLfnykyCGdvzXd7A==
X-IronPort-AV: E=Sophos;i="5.81,249,1610402400"; 
   d="scan'208";a="5177785"
Received: from unknown (HELO wvale-jmb-svr-1.econetzw.local) ([192.168.101.35])
 by ironportLAN.econet.co.zw with ESMTP; 15 Mar 2021 08:35:29 +0200
Received: from MRE-MB-SVR-2.econetzw.local (192.168.64.154) by
 wvale-jmb-svr-1.econetzw.local (192.168.101.35) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Mon, 15 Mar 2021 08:34:23 +0200
Received: from mre-mb-svr-2.econetzw.local ((192.168.64.154)) by
 mre-mb-svr-2.econetzw.local ((192.168.64.154)) with ShadowRedundancy id
 15.0.1473.3; Mon, 15 Mar 2021 06:28:08 +0000
Received: from WVALE-MB-SVR-05.econetzw.local (192.168.101.173) by
 mre-mb-svr-2.econetzw.local (192.168.64.154) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Sat, 13 Mar 2021 17:29:03 +0200
Received: from User (165.231.148.189) by WVALE-CAS-SVR-9.econetzw.local
 (10.10.11.230) with Microsoft SMTP Server id 15.0.1473.3 via Frontend
 Transport; Sat, 13 Mar 2021 17:29:14 +0200
From: "Reem E. A" <chawora@econet.co.zw>
Subject: Re:
Date: Sat, 13 Mar 2021 15:29:01 -0800
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-ID: <8bd610e62caf400783acd4309e54dad1@WVALE-CAS-SVR-9.econetzw.local>
To: Undisclosed recipients:;
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
Reply-To: r19772744@daum.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

My name is Ms. Reem Ebrahim Al-Hashimi, I am the "Minister of state
and Petroleum" also "Minister of State for International Cooperation"
in UAE. I write to you on behalf of my other "three (2) colleagues"
who has approved me to solicit for your "partnership in claiming of
{us$47=Million}" from a Financial Home on their behalf and
for our "Mutual Benefits".

The Fund {us$47=Million} is our share from the (over-invoiced) Oil/Gas
deal with Turkish Government within 2013/2014, however, we
don't want our government to know about the fund. If this proposal
interests you, let me know, by sending me an email and I will send to
you detailed information on how this business would be successfully
transacted. Be informed that nobody knows about the secret of this
fund except us, and we know how to carry out the entire transaction.
So I am compelled to ask, that you will stand on our behalf and
receive this fund into any account that is solely controlled by you.

We will compensate you with 15% of the total amount involved as
gratification for being our partner in this transaction. Reply to:
reem.alhashimi@yandex.com

Regards,
Ms. Reem.
This mail was sent through Econet Wireless, a Global telecoms leader.

DISCLAIMER

The information in this message is confidential and is legally privileged. It is intended solely for the addressee. Access to this message by anyone else is unauthorized. If received in error please accept our apologies and notify the sender immediately. You must also delete the original message from your machine. If you are not the intended recipient, any use, disclosure, copying, distribution or action taken in reliance of it, is prohibited and may be unlawful. The information, attachments, opinions or advice contained in this email are not the views or opinions of Econet Wireless, its subsidiaries or affiliates. Econet Wireless therefore accepts no liability for claims, losses, or damages arising from the inaccuracy, incorrectness, or lack of integrity of such information.
[https://mail.econet.co.zw/OWA/auth/current/themes/resources/Agile/AgileBanner.png]
WORK ISN'T A PLACE
IT'S WHAT WE DO
________________________________





[https://mail.econet.co.zw/OWA/auth/current/themes/resources/Agile/telephone.png]




[https://mail.econet.co.zw/OWA/auth/current/themes/resources/Agile/email.png]

<mailto:>


[https://mail.econet.co.zw/OWA/auth/current/themes/resources/Agile/location.png]




[https://mail.econet.co.zw/OWA/auth/current/themes/resources/Agile/website.png]

www.econet.co.zw<https://www.econet.co.zw>


[https://mail.econet.co.zw/OWA/auth/current/themes/resources/Agile/inspired.jpg]
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
