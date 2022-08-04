Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29778589DE9
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Aug 2022 16:52:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 10FF540C39;
	Thu,  4 Aug 2022 14:52:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10FF540C39
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id adFZyvEqv_EO; Thu,  4 Aug 2022 14:52:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D859A40C31;
	Thu,  4 Aug 2022 14:52:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D859A40C31
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9E0BE1BF83E
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  4 Aug 2022 14:52:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 86670610BD
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  4 Aug 2022 14:52:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 86670610BD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ThtIBrs4JPYD
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  4 Aug 2022 14:52:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E92FC60E2C
Received: from jamilortiz.ml (unknown [137.184.121.83])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E92FC60E2C
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  4 Aug 2022 14:52:26 +0000 (UTC)
Received: from [103.99.1.70] (helo=User)
 by jamilortiz.ml with esmtpa (Exim 4.90_1)
 (envelope-from <torrance@jamilortiz.ml>)
 id 1oJcCx-0003rB-7T; Thu, 04 Aug 2022 14:52:19 +0000
From: "Aleksandr Kovalenko"<torrance@jamilortiz.ml>
Subject: Hello friend, please reply back urgent..
Date: Thu, 4 Aug 2022 07:52:21 -0700
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-Id: <E1oJcCx-0003rB-7T@jamilortiz.ml>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=jamilortiz.ml; s=mail; h=Message-Id:Content-Transfer-Encoding:Content-Type:
 MIME-Version:Date:Subject:From:Reply-To:Sender:To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=At+xolHRQ5SF9l2pwatDJXCgHIe/dENfSyqC5QOsAdo=; b=38DeJMHOObSLj3wBuK+xs7fqgH
 Einpq3s8OPWfDpeiG9NKo326sxbTWoygKgsm+poFRwMbAfsQF59nKn33HlVe7Fcq1AiZiyl1pcW3U
 vqbBAmnjLEP+onDeFpUUTxjDdIzjFPddJg+GTjtLPO8wZWds6mZxuY+vtdDYJn7NPynE=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=jamilortiz.ml header.i=@jamilortiz.ml
 header.a=rsa-sha256 header.s=mail header.b=38DeJMHO
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
Reply-To: alekskovnko@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

How are you today? I Hope you are staying safe,

I am  Mr Aleksandr Kovalenko from Ukraine, Army General in the battle war commanding, I have something very important business to share with you which will benefit both of us soon.

I will give you full details when I receive your interested email.

Best Regard,
Mr Aleksandr Kovalenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
