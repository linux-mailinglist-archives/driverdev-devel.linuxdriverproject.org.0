Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 31CA97EC65F
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Nov 2023 15:53:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4922B60FF6;
	Wed, 15 Nov 2023 14:53:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4922B60FF6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YnX7Yr_7fKhM; Wed, 15 Nov 2023 14:53:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C16960FF8;
	Wed, 15 Nov 2023 14:53:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C16960FF8
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 895ED1BF391
 for <devel@linuxdriverproject.org>; Wed, 15 Nov 2023 14:53:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 60F97827A0
 for <devel@linuxdriverproject.org>; Wed, 15 Nov 2023 14:53:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 60F97827A0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gxEvNxSabfdS for <devel@linuxdriverproject.org>;
 Wed, 15 Nov 2023 14:53:29 +0000 (UTC)
X-Greylist: delayed 421 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 15 Nov 2023 14:53:28 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D8EF6827AF
Received: from server.frontfacebusiness.com.mx (dns31406.dizinc.com
 [107.161.188.27])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D8EF6827AF
 for <devel@driverdev.osuosl.org>; Wed, 15 Nov 2023 14:53:28 +0000 (UTC)
Received: from server.frontfacebusiness.com.mx (localhost.localdomain
 [127.0.0.1])
 by server.frontfacebusiness.com.mx (Postfix) with ESMTP id 917641F524A;
 Wed, 15 Nov 2023 08:46:19 -0600 (CST)
Received-SPF: pass (server.frontfacebusiness.com.mx: localhost is always
 allowed.) client-ip=127.0.0.1;
 envelope-from=torrescampestreapi@frontfacebusiness.com.mx;
 helo=server.frontfacebusiness.com.mx; 
Received: from server.frontfacebusiness.com.mx ([127.0.0.1])
 by server.frontfacebusiness.com.mx (server.frontfacebusiness.com.mx
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DhnlZO4B1qfg; Wed, 15 Nov 2023 08:46:18 -0600 (CST)
Received: from [51.195.53.194] (ip194.ip-51-195-53.eu [51.195.53.194])
 by server.frontfacebusiness.com.mx (Postfix) with ESMTPA id CF75D1F5202;
 Wed, 15 Nov 2023 08:45:48 -0600 (CST)
Received-SPF: pass (server.frontfacebusiness.com.mx: connection is
 authenticated)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: my subject
To: Recipients <torrescampestreapi@frontfacebusiness.com.mx>
From: "Ms Toni"<torrescampestreapi@frontfacebusiness.com.mx >
Date: Wed, 15 Nov 2023 06:45:38 -0800
X-PPP-Message-ID: <170005955627.15929.15827579883550866323@server.frontfacebusiness.com.mx>
X-PPP-Vhost: frontfacebusiness.com.mx
Message-Id: <20231115145329.60F97827A0@smtp1.osuosl.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=frontfacebusiness.com.mx; s=default; t=1700059586;
 bh=S0C1sjeHjK5aJ1yHp6QKSt2ig/RmqOwyBGPxLRqSYFQ=;
 h=Received:Received:Subject:To:From;
 b=JE9ivkGYSMsEloT+sAM9rA6z6T4IuW2tEpJ1HzEIMTW+d8VK7pcZUtDMowZUOF5tt
 XiNIuUUaOzCPLisaCX3oQ3ZG5njWPk6GuJJYryioMDcn7FwYV1QTQpE4ZbzrSrLunc
 DVeb/b+S0ycbh4wpZ9K7dSNGpr8X8NofTm0Zgl6s=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=frontfacebusiness.com.mx
 header.i=@frontfacebusiness.com.mx header.a=rsa-sha256 header.s=default
 header.b=JE9ivkGY
X-Mailman-Original-Authentication-Results: server.frontfacebusiness.com.mx;
 spf=pass (sender IP is 127.0.0.1)
 smtp.mailfrom=torrescampestreapi@frontfacebusiness.com.mx
 smtp.helo=server.frontfacebusiness.com.mx
X-Mailman-Original-Authentication-Results: server.frontfacebusiness.com.mx
 (amavisd-new); 
 dkim=pass (1024-bit key) header.d=frontfacebusiness.com.mx
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
Reply-To: tran24358@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I'm Toni Harris and I'm looking for a partner to work with in your country. I need assistance investing funds in your country. Email me to discuss this opportunity with you. Contact email: tran24358@gmail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
