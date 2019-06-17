Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3669B47B01
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Jun 2019 09:29:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C960820441;
	Mon, 17 Jun 2019 07:29:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9EAWoWSn+C8H; Mon, 17 Jun 2019 07:29:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6756920436;
	Mon, 17 Jun 2019 07:29:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BF7511BF3E3
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 07:29:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BC6C781680
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 07:29:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ObxbJrFuNh8r for <devel@linuxdriverproject.org>;
 Mon, 17 Jun 2019 07:29:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from slot0.nejknio.cf (slot0.nejknio.cf [89.32.41.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4815D815EA
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 07:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim; d=nejknio.cf;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Content-Description:Subject:To:From:Date:Reply-To:Message-ID;
 i=trade1@nejknio.cf; bh=73Xs4LxjK+lP+h5mKCyFyWTpkoQ=;
 b=fsRiH13wLtNXDm4cI9kgmS/Qk2+c9o+Kr7vcmYaJal0kIalDX2QBHceOeXJgbIzyulG2OJ5lNpAI
 eMzeXiihwHz8lUrI5SqUxXWP7Aqt1I9bOUN1xXj3nvVlwdboGW/VUuKE23rZDfbCusCWy6cYfWTy
 kgBybi79gKXEgOD4IHtFQquOQWhfOcStyFXrEyGedj2lDLPcQj03x7eEPnSsE4ui6j7CVEu1B80A
 WG99425zmjkoDvzj86qcX5roWlqN8+4sUAYChc98kcDmNHHgeYuR2B1ATAIb2ELSg+xm7bwi4lvP
 E/Udc5Zgk2re+MHZBVII7T6Xa8kbIwsbL0Yghg==
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim; d=nejknio.cf;
 b=du/5+bEKefuZMX6z3mJrXQCdExJFf4b4YYNOPG8cwkMgU7xrjUwhLLpfcEp6X12qgI2ePM9NABzO
 8OvHp7QFiabg/4y6oJjarhg2SOrydiwP/ifCuueBXUj5Zw4lYR6wgB7zfc1sgyfWStOnL15Fh/Zx
 BZCyBHeDVENf6HSjMaKSF5dqCZMXO6eUbFbXVGPbYta5UlfEYtHonZ7A8aaGPkthrEAG4oijToJA
 tyqboeEfyOAIQHkn+al7yDV4OyAFLrhIpSsiJtK9/yG4qrLLo0KQUn5WL9HyLCiw4TujB4YqnMui
 LhWtWzHIEKohqVkaeJFYMpOlF8ZghzQTEBakXw==;
MIME-Version: 1.0
Content-Description: Mail message body
Subject: PRODUCT INQUIRY FOR EXPORT SHIPMENT
To: Recipients <trade1@nejknio.cf>
From: "Mark Maths" <trade1@nejknio.cf >
Date: Mon, 17 Jun 2019 10:08:54 +0300
Message-ID: <0.0.1.A93.1D524DB7B3DD036.0@slot0.nejknio.cf>
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
Reply-To: purchase_m.maths@aol.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Sales team,
 
In furtherance to our market research, we have reviewed all your products types and we have finally interested in your product for our market here in 

United State for your production. We introduce ourselves as Emilxa Tram SRL, A general group of company located in the United State. 

We are sourcing for new suppliers from your location 

Kindly advice us if you accept new purchase orders, I will forward our PO for urgent order.

Waiting for your response to send order. Reply to ( purchase_m.maths@aol.com)

Best regards.
Mark Maths
Company Address:
Emilxa Tram SRL Company Limited
P.O. Box 978
Road Town
Tortola
British Virgin Islands
Contact information:
Tel: +1 (284) 493 7235
Email: purchase_m.maths@aol.com
https://meridianbvi.com/contact-us/
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
