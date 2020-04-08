Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B882A1A1BEC
	for <lists+driverdev-devel@lfdr.de>; Wed,  8 Apr 2020 08:35:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C8FAB87B8A;
	Wed,  8 Apr 2020 06:35:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oVZR2I8Isxz5; Wed,  8 Apr 2020 06:35:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3C5B587B3E;
	Wed,  8 Apr 2020 06:35:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 51F9E1BF860
 for <devel@linuxdriverproject.org>; Wed,  8 Apr 2020 06:35:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4BBC487B4C
 for <devel@linuxdriverproject.org>; Wed,  8 Apr 2020 06:35:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pXCJp3CCcHOd for <devel@linuxdriverproject.org>;
 Wed,  8 Apr 2020 06:35:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 684D987B3E
 for <devel@driverdev.osuosl.org>; Wed,  8 Apr 2020 06:35:41 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id s8so6428641wrt.7
 for <devel@driverdev.osuosl.org>; Tue, 07 Apr 2020 23:35:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:message-id:mime-version:to:reply-to:subject:date
 :content-transfer-encoding;
 bh=RjOpKR64JcF3HJqrI07JmC7nXFZX7asiVKu7icc5Q3U=;
 b=eG/pdPnhLK0zfRa6JBUcMOW25nr8MF75ZaHawczJaJPlPEEhwsMKK1Fia0fZsoRuVd
 QQ0LJg27xB06y5hLWemV5tI+tE3xkaOMgCSgInBv9/cr+0WLgFyEQrmfF2QUq4pm6Nq2
 nFT+hM3W7sBUWBbC98BB/glHACvL8ZzADnvXkmw6QAmvhQJtJUjnqBWsObHH0GP5RkcH
 EX1f46r+S+da5rusuDiwkP+SggnIjmUtmu+gBv2SSPmxUh0TyzrJ74EP9shiV4bg4p9w
 oZAzrIZgIUVBDOpy+xkoBYSxIZSk1Ug4lbnqL86tSkJzSENtqChSme0OTquhLlFW/5Pv
 UP8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:message-id:mime-version:to:reply-to:subject
 :date:content-transfer-encoding;
 bh=RjOpKR64JcF3HJqrI07JmC7nXFZX7asiVKu7icc5Q3U=;
 b=p2BmoKN9jyfLQpfNQRyfC3es6LXsvZdXyUQoYx92xDXAnrYUMAewWLUNb8tj62JMS9
 Z1KPaD15nh8k+SNnha3rOOx/ZcJOEtrLw1LtPWRVQcsiHd0GxbUi7qk7UYi4+4zmz/mP
 6ywwweBCJNnd5uvRHLcRunycuHyyGWM3d+8OV/PVbkPJ7ZXatkFZt0IH/Faomcjrdn4e
 +COzoQ+aKlPb4B8bIycZEeNl22MgTu6q4Ybaes6pOkohJLmGU/bkeKdw82K4j1SnbD1T
 M0g+3EFGb7khS+oikQuK5TuvjM7q7SulpfoQYj1wzGdSiox0daHrV8NnmINv2iMX51/Z
 1Xlw==
X-Gm-Message-State: AGi0PuY87DHZAzu6YiYEpWEYBgRZkz9+hwrN0pqUBxtG4Emg+akUSAIn
 QYsAyX6YceBGHmqmUASkgmUlhneA0Zo=
X-Google-Smtp-Source: APiQypKPoxZXQQTLCXgc5h5AMaRnmO7qmg7oDUJsLxKBusGtmyc+TVAgqc293pNkgPNGgs42LFQflw==
X-Received: by 2002:adf:bb0d:: with SMTP id r13mr645057wrg.251.1586327739124; 
 Tue, 07 Apr 2020 23:35:39 -0700 (PDT)
Received: from [192.168.0.101] ([80.248.78.242])
 by smtp.gmail.com with ESMTPSA id a67sm5819362wmc.30.2020.04.07.23.35.37
 for <devel@driverdev.osuosl.org>
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Tue, 07 Apr 2020 23:35:38 -0700 (PDT)
From: kaleb Omari <alexjolee50@gmail.com>
X-Google-Original-From: kaleb Omari <ezeobagideon@gmail.com>
Message-Id: <TK12DM6K-41TD-QXZ2-WARF-XBY4VCI06YM@gmail.com>
Mime-Version: 1.0
To: "Devel" <devel@driverdev.osuosl.org>
Subject: HELLO WINNER 
Date: Tue, 7 Apr 2020 23:35:37 -0700
X-Mailer: MBM 8.4.1-US
X-Bounce-Tracking-Info: <RGV2ZWwJCQlkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZwlIRUxMTyBXSU5ORVIgCTQ2MgkJNzUJYm91bmNlCW5vCW5v>
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
Reply-To: contact.winwinz.post.20s@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Congratulations

 This is to inform you that your email address have won a prize sum of $1.200,000,00 One Million Two Hundred Thousand United State Dollars from Mo-Lottery award 2020,

 https://www.lotteryusa.com/missouri/lotto/year

Your Winning Number  is (19-22-24-26-40-44) and check  the link of past winners reply as soon as possible to claim your prize and choose your choice of tranfer

 Contact Claims manager through this email address

Email ( contact.winwinz.post.20s@gmail.com )

Congratulation in advance

Mr. kali Edmonds

contact.winwinz.post.20s@gmail.com

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
