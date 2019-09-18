Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 76BA8B6A2E
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 20:01:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CC920867AC;
	Wed, 18 Sep 2019 18:01:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HnoTbY50RHbc; Wed, 18 Sep 2019 18:01:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3173386745;
	Wed, 18 Sep 2019 18:01:51 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 627CA1BF28B
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 18:01:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5ED96865D6
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 18:01:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Gyew14AaVnl
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 18:01:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from host.netwaveinteractive.com (host.netwaveinteractive.com
 [72.52.138.12])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 84F6186214
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 18:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=adagencynj.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Date:Subject:From:Reply-To:Sender:Message-ID:To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zsKpLvbsrLldhyyhAK4a639o7V6l15VR17kOuzujzzs=; b=XjoVIt/I2olFL+JxGYQb3DNf1H
 I194stbVtbm+BHkrPxCnl+m0/ffqZOpgeq/GzhVqYy5LK09hqTHS4t4aMSNCK8VSFspA3MHI/90qo
 RkGE0sHyngL6fm6Mru1jJIr+9;
Received: from [13.88.242.187] (port=62807 helo=User)
 by host.netwaveinteractive.com with esmtpa (Exim 4.92)
 (envelope-from <manilov@gorodkirov.ru>)
 id 1iAeGc-002V7E-7g; Wed, 18 Sep 2019 14:01:26 -0400
From: "WBF"<manilov@gorodkirov.ru>
Subject: 18/09/2019
Date: Wed, 18 Sep 2019 18:01:27 -0000
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - host.netwaveinteractive.com
X-AntiAbuse: Original Domain - linuxdriverproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - gorodkirov.ru
X-Get-Message-Sender-Via: host.netwaveinteractive.com: authenticated_id:
 sales@adagencynj.com
X-Authenticated-Sender: host.netwaveinteractive.com: sales@adagencynj.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Message-Id: <20190918180149.5ED96865D6@whitealder.osuosl.org>
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
Reply-To: wbfefft@aim.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Good day to you.

We sent you an email yesterday about foundation project funding.

Do let me know if you received it so further details can be advised.

kindest regards,
fred Anderson
Email:wbfefft@aim.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
