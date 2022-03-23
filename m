Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E56E4E5816
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Mar 2022 19:06:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 138DC84759;
	Wed, 23 Mar 2022 18:06:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uuzMiN38l_9z; Wed, 23 Mar 2022 18:06:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A8F5A84363;
	Wed, 23 Mar 2022 18:06:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 308E61BF4D5
 for <devel@linuxdriverproject.org>; Wed, 23 Mar 2022 18:06:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2CF3241B96
 for <devel@linuxdriverproject.org>; Wed, 23 Mar 2022 18:06:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=metro-polasset.xyz
 header.b="NevrbqTN"; dkim=pass (1024-bit key)
 header.d=metro-polasset.xyz header.b="NevrbqTN"
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OWNtXc2gU3Ya for <devel@linuxdriverproject.org>;
 Wed, 23 Mar 2022 18:06:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from host.metro-polasset.xyz (metro-polasset.xyz [185.31.160.134])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8866B41B95
 for <devel@driverdev.osuosl.org>; Wed, 23 Mar 2022 18:06:24 +0000 (UTC)
Received: from metro-polasset.xyz
 (ec2-3-14-84-50.us-east-2.compute.amazonaws.com [3.14.84.50])
 by host.metro-polasset.xyz (Postfix) with ESMTPA id 442A82274257
 for <devel@driverdev.osuosl.org>; Wed, 23 Mar 2022 18:49:25 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 host.metro-polasset.xyz 442A82274257
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=metro-polasset.xyz;
 s=default; t=1648050566;
 bh=3iHkZ7hYPj2qQCe2RVRnmt1WksdY+Cx8out2eC2Spk8=;
 h=Reply-To:From:To:Subject:Date:From;
 b=NevrbqTN54oCion5XORykqr6MJkBJ4o8UMUVAUUun6w9iej/m5QJWUePLtM6JjKun
 G5rKudWebF2r+a5NWt3fvm6XiD+/kTmEEuvyGZuLymXFdRn4i0MK28CluCH8l8rOh+
 2MaGDP2erGdH2Rc80uvIhN+XBh7vtJK9ocOcXkQI=
DKIM-Filter: OpenDKIM Filter v2.11.0 host.metro-polasset.xyz 442A82274257
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=metro-polasset.xyz;
 s=default; t=1648050566;
 bh=3iHkZ7hYPj2qQCe2RVRnmt1WksdY+Cx8out2eC2Spk8=;
 h=Reply-To:From:To:Subject:Date:From;
 b=NevrbqTN54oCion5XORykqr6MJkBJ4o8UMUVAUUun6w9iej/m5QJWUePLtM6JjKun
 G5rKudWebF2r+a5NWt3fvm6XiD+/kTmEEuvyGZuLymXFdRn4i0MK28CluCH8l8rOh+
 2MaGDP2erGdH2Rc80uvIhN+XBh7vtJK9ocOcXkQI=
From: E Matare <elliotmatare20@metro-polasset.xyz>
To: devel@driverdev.osuosl.org
Subject: Did you get my last email
Date: 23 Mar 2022 15:49:24 +0000
Message-ID: <20220323154924.4A1C7077A639E27C@metro-polasset.xyz>
Mime-Version: 1.0
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
Reply-To: elliotmatare20@metropolitanasset-manager.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Good day. My name is Elliot Matare. I sent you a very important 
business proposal last week but I am yet to receive a response 
from you as of yet. I am not sure if you did receive the proposal 
 or not so if you would be so kind to confirm if you got my  
previous email and if you are interested in what was being 
proposed, I will appreciate it. On the hand, if you I can resend 
it to you if you did not receive my previous message with the 
proposal. Looking forward to your response.

Regards,

Elliot Matare
Metropolitan Asset Manager
Telephone: 010 442 6203
metropolitanasset-manager.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
