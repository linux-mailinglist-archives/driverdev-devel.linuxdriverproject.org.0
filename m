Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 93983240055
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Aug 2020 00:45:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EBAA8221DC;
	Sun,  9 Aug 2020 22:45:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q1gEWW5RT3Kg; Sun,  9 Aug 2020 22:45:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9F2BC204D1;
	Sun,  9 Aug 2020 22:45:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E79311BF951
 for <devel@linuxdriverproject.org>; Sun,  9 Aug 2020 22:45:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E0F6A88EB4
 for <devel@linuxdriverproject.org>; Sun,  9 Aug 2020 22:45:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3lgyk1Jv5Kuw for <devel@linuxdriverproject.org>;
 Sun,  9 Aug 2020 22:45:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from stc.df.gob.mx (unknown [187.141.34.169])
 by whitealder.osuosl.org (Postfix) with ESMTP id 33DF788EA8
 for <devel@driverdev.osuosl.org>; Sun,  9 Aug 2020 22:45:29 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by stc.df.gob.mx (Postfix) with ESMTP id 4B111507073;
 Sun,  9 Aug 2020 09:47:28 -0500 (CDT)
Received: from stc.df.gob.mx ([127.0.0.1])
 by localhost (stc.df.gob.mx [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id Nuupyd61RBoY; Sun,  9 Aug 2020 09:47:28 -0500 (CDT)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by stc.df.gob.mx (Postfix) with ESMTP id 2BDB7503805;
 Sun,  9 Aug 2020 09:07:30 -0500 (CDT)
DKIM-Filter: OpenDKIM Filter v2.7.1 stc.df.gob.mx 2BDB7503805
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=metro.cdmx.gob.mx;
 s=B8BACA6A-E0C1-11E5-BAEC-26631A643E14; t=1596982050;
 bh=WYoOqKhtOLTn6wc68IMffn2QxibJPh9b+4FNtN3v1ko=;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:To:
 From:Date:Reply-To:Message-Id;
 b=rDaBKLHVBAcRRzVzOOXQUhu821AFig4vij67NGZEUpYbWC0Q+pZZCvV7VzKSPJm2z
 KnMfckQnQaeeOR4nUPNCi3sPiQH9Ua8pUYDCA3uZWYkcxem3oH9aNwaAVSFVcw6ZTr
 BrZjVSqzZhmo0IcEJ1Z0LH/SgQ6mHe85m+5Tx6mU=
X-Virus-Scanned: amavisd-new at stc.df.gob.mx
Received: from stc.df.gob.mx ([127.0.0.1])
 by localhost (stc.df.gob.mx [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id We2gRBlgDUJn; Sun,  9 Aug 2020 09:07:30 -0500 (CDT)
Received: from [192.168.0.103] (unknown [46.39.229.239])
 by stc.df.gob.mx (Postfix) with ESMTPSA id A378D506A3E;
 Sun,  9 Aug 2020 08:33:49 -0500 (CDT)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Loan Offer
To: Recipients <lesly.gutierrez@metro.cdmx.gob.mx>
From: Anold lubos<lesly.gutierrez@metro.cdmx.gob.mx>
Date: Sun, 09 Aug 2020 16:59:41 +0300
X-Antivirus: Avast (VPS 200809-2, 2020/08/09), Outbound message
X-Antivirus-Status: Clean
Message-Id: <20200809133349.A378D506A3E@stc.df.gob.mx>
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
Reply-To: arnoldfundingsplc@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Business / personal loan offer at an affordable price
Full name
country
amount
Duration
phone
Email arnoldfundingsplc@gmail.com

-- 
This email has been checked for viruses by Avast antivirus software.
https://www.avast.com/antivirus

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
