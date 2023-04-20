Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9BB16E8D08
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Apr 2023 10:45:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 184064055E;
	Thu, 20 Apr 2023 08:45:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 184064055E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 01rRmpz7DX6Y; Thu, 20 Apr 2023 08:45:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B96FE4052D;
	Thu, 20 Apr 2023 08:45:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B96FE4052D
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 79F181BF4E5
 for <devel@linuxdriverproject.org>; Thu, 20 Apr 2023 08:44:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 513FD41697
 for <devel@linuxdriverproject.org>; Thu, 20 Apr 2023 08:44:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 513FD41697
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FEkPbEyzaolg for <devel@linuxdriverproject.org>;
 Thu, 20 Apr 2023 08:44:57 +0000 (UTC)
X-Greylist: delayed 00:30:35 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 868FD410EC
Received: from bosmailout10.eigbox.net (bosmailout10.eigbox.net [66.96.187.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 868FD410EC
 for <devel@driverdev.osuosl.org>; Thu, 20 Apr 2023 08:44:57 +0000 (UTC)
Received: from bosmailscan03.eigbox.net ([10.20.15.3])
 by bosmailout10.eigbox.net with esmtp (Exim) id 1ppPQq-0001sw-UB
 for devel@driverdev.osuosl.org; Thu, 20 Apr 2023 04:14:20 -0400
Received: from [10.115.3.32] (helo=bosimpout12)
 by bosmailscan03.eigbox.net with esmtp (Exim)
 id 1ppPQi-0007cF-TS; Thu, 20 Apr 2023 04:14:12 -0400
Received: from boswebmail12.eigbox.net ([10.20.16.12]) by bosimpout12 with 
 id mwE1290240Fcwky01wE4iP; Thu, 20 Apr 2023 04:14:12 -0400
X-EN-SP-DIR: OUT
X-EN-SP-SQ: 1
Received: from [127.0.0.1] (helo=emailmg.ipower.com)
 by boswebmail12.eigbox.net with esmtp (Exim)
 id 1ppPQU-0001Fz-AI; Thu, 20 Apr 2023 04:13:58 -0400
Received: from 192.168.151.0 (SquirrelMail authenticated user Info@741Taxi.com)
 by emailmg.ipower.com with HTTP; Thu, 20 Apr 2023 04:13:58 -0400
Message-ID: <88470425c35200e11e0411c997b8e6c6.squirrel@emailmg.ipower.com>
Date: Thu, 20 Apr 2023 04:13:58 -0400
Subject: Funds Release Order.
From: "George Louis" <Info@741Taxi.com>
User-Agent: SquirrelMail/1.4.19
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
X-EN-AuthUser: Info@741Taxi.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=741taxi.com
 ; s=dkim; h=Sender:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Reply-To:From:Subject:Date:Message-ID:To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QW9GQPb7M4qppriCQfHcGdm8eoa+hzpa17MgFiDmEdw=; b=hfgcCbXjd2hwuZTm6BtjCPSuYE
 NCy1vz3FVbV6WRA+TenzapVtywrlnKkyW2ANwhE/GHhJJ4f5FGtmyAWTNrKyY2gtSggFmN5ws/Bk3
 lz0z/8KeytVU0d8BoMbD4GfNTTYtcZOLxXQcDMVJgs7mAUf+MlRqt4v7YhGrXP3IVQAJKMkgzwM1I
 W96Qz41anIJ1BPLhHyBKwaZoixx5uylWxe0OvxFA06qOU7/jMgJeHEipBVKS1ar1F+vRM18B7GX/a
 BbSawK1grQokPqUhIMfQx8wJ1seMrvtIcwDWrgSqDeCAgKuQAs4xXD+TLFeaPsE70G0ffzDgDNh4d
 2nBXu44g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=741taxi.com header.i=@741taxi.com header.a=rsa-sha256
 header.s=dkim header.b=hfgcCbXj
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
Reply-To: officialserviceuae@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Funds Release Order.

In consideration of the legislative/legal resolution reached by the World
Governing Bodies: The IMF, United Nations Organization, World Bank Group,
United States Government, British Government and the European Union
Commission Committee on Financial and Allied Matters following series of
complaints and petitions received from the office of the European Union
Police Commission, The FBI and The INTERPOL respectively over the
non-payment of foreign beneficiaries=92 payments as at when due. This Ad hoc
committee on fact-finding and foreign payment was subsequently inaugurated
to help release immediately all the outstanding payments that had received
proper approvals and endorsements from the various agencies/offices but
was delayed due to the nonchalant attitudes of those at the helm of
affairs.

From the records of outstanding beneficiaries due for payment with the
various Government Agencies, your name was discovered as next on the list
of beneficiaries whose files showed sufficient proves to receive their
overdue payment but was marred by various fees imposed on them by their
so-called representatives especially bank officials who ended up in
ripping them off their savings instead of discharging their duties
diligently and also divert their approved funds to several untraceable
bank accounts without due consent of the original benefactors.

I wish to inform you that your Contract, Inheritance and Winning Fund is
being processed and will be released to you through the government
Approved Payment Channels, as soon as you respond to this notification.

To avoid all further bottlenecks, we have allocated to you new
International Payment Voucher Number: IMF/FRBWDC/US-BG-93WB82UN567-G,
Approval Number: 7402-2011, Certificate of Merit Number: 781 and Release
Code Number: 0295 and you must quote any of these Identification Numbers
before us, for proper identification. Note also that your file is
currently in my office and from the records I have in my file, you have
been cleared to receive the sum of
US$11,000,000.00 ( Eleven Million United States Dollar only)

Reconfirm the following information to me for final ratification exercise:

1} Full Name, For Verification:...
2} Home/Office Telephone Number:....
3} Home/Office Fax Number:....
4} Occupation:....
5} Age/ Marital Status:....
6} Home Address:....
7} Nationality:....
8} Scan copy of your Int'l passport or any valid identity card ( I.D card)

As soon as this Information is received, your payment will be duly
processed and released to you, through our most reliable payment
channels within the shortest possible time.

Thanks for your anticipated cooperation.

Yours in Service

Barrister George Louis.
Attorney at law/Secretary.
Fact-finding and foreign payment.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
