Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7EE5356E1
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 May 2022 01:59:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E16EC84743;
	Thu, 26 May 2022 23:59:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DjXZHjRNJzTu; Thu, 26 May 2022 23:59:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AE530846F4;
	Thu, 26 May 2022 23:59:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 670261BF20B
 for <devel@linuxdriverproject.org>; Thu, 26 May 2022 23:59:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 63C0D6157F
 for <devel@linuxdriverproject.org>; Thu, 26 May 2022 23:59:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=psa.gov.ph header.b="saKbuorX";
 dkim=pass (1024-bit key) header.d=psa.gov.ph header.b="NNhrf4lh"
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4xupaYyYT6qj for <devel@linuxdriverproject.org>;
 Thu, 26 May 2022 23:59:36 +0000 (UTC)
X-Greylist: delayed 03:50:08 by SQLgrey-1.8.0
Received: from mail3.psa.gov.ph (mail3.psa.gov.ph [202.78.94.76])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B5F926157C
 for <devel@driverdev.osuosl.org>; Thu, 26 May 2022 23:59:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.psa.gov.ph 91C786024FE9
DMARC-Filter: OpenDMARC Filter v1.3.2 mail3.psa.gov.ph D267DE1199
Authentication-Results: mail3.psa.gov.ph;
 dmarc=fail (p=reject dis=none) header.from=psa.gov.ph
Authentication-Results: mail3.psa.gov.ph;
 spf=fail smtp.mailfrom=v.abuan@psa.gov.ph
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.psa.gov.ph D267DE1199
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=psa.gov.ph;
 s=default2; t=1653589290;
 bh=Qac0n7plRzij+y0Xmf78cS637XYGvpsll6R+KQOPb9Q=;
 h=Subject:To:From:Date:Reply-To:From;
 b=saKbuorXertWqW8zyt4DtAav7Fv3oIBrqiSqKTLHZvONruzc8NbfWJjX6vh/SG1kQ
 /P+cs5z3tsSjG1sf1C0sBaeEdNZPXBkrRv/voQARFqDP1S0UKS9yMWe2pChT7OAAFZ
 AkeN88H7zlsDkjsrzz+ndNQaxeShN5yxDYXq0aPU=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=psa.gov.ph;
 s=default; t=1653590206;
 bh=Qac0n7plRzij+y0Xmf78cS637XYGvpsll6R+KQOPb9Q=;
 h=Subject:To:From:Date:Reply-To:From;
 b=NNhrf4lhQe4EHTOGaf90rIFMEdYRnsvKGSk0cMBfHXE76Se3kW5lzDDzXVmXalD3x
 rtEowA4RPKcwBM7UMWUHMJuOrMapPkFfTYN4NTdJMs/Txm/I2EtGaIitaasTDmfAMW
 FHLTsZ3Hi2TLHFx8F5risIQJdyrQONIsXJ9G5L40=
X-Virus-Scanned: amavisd-new at psa.gov.ph
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.psa.gov.ph 0495260BC64A
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Investment
To: Recipients <v.abuan@psa.gov.ph>
From: v.abuan@psa.gov.ph
Date: Thu, 26 May 2022 18:04:52 +0000
Message-Id: <20220526183646.91C786024FE9@mail.psa.gov.ph>
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
Reply-To: reem2018@daum.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

My name is Reem Hashimy, the Emirates Minister of State and Managing Director of the United Arab Emirates (Dubai) World Expo 2020 Committee which was postponed from 2020 to October 2021 to March 2022 because of the Covid-19 pandemic.

I am writing to you to manage the funds I received as financial gratification from various foreign companies I assisted to participate in the event that is taking place as we speak. The amount is $44,762,906.00 United States dollars. But I can not personally manage the fund in my country because of the sensitive nature of my office and the certain restriction on married Muslim women.

For this reason, an agreement was reached with the various firms to direct the financial gifts to an account with a financial institution where it will be possible for me to instruct the transfer of the fund to a third party for investment purpose; which is the reason I am contacting you to receive the fund and manage it as my investment partner. Note that the fund is NOT connected to any criminal or terrorist activity.

On your indication of interest with your information; I will instruct the financial institution to process the fund to your country for investment purposes.

Regards.
Reem Hashimy.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
