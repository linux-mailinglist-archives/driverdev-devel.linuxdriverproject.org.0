Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FBF1BB8EB
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Apr 2020 10:36:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6B7238731E;
	Tue, 28 Apr 2020 08:36:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 86n5i04HpJ5B; Tue, 28 Apr 2020 08:36:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DC7F78721E;
	Tue, 28 Apr 2020 08:36:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 968BE1BF312
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 08:36:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 92AE82155C
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 08:36:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WCzbUTuYWM+p for <devel@linuxdriverproject.org>;
 Tue, 28 Apr 2020 08:36:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 7F2DA203E2
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 08:36:44 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id y3so563991lfy.1
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 01:36:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=xz3A6xl5ya595zoZHjHSS41TmX4fAGs0v1xk0KBT4a4=;
 b=jcApM/YXd7Ysg6tNDbJlxNmqsQ9b/R1k3P4+Cjq9QBJ/TcZ7/b3WhfhubDmPQu966C
 1F7QaOF4oECGZ5mA4GeFosaqRj9b69nuoga/DknTOqwbSfbNaerxeHBKmcr72qPliHIx
 XEEZXQnm3xBawL/G8J2j4H12Ypzyb0mhBqkIdwDVjiRpPa5i9FgOoYvZo+VG0oIBuG47
 A1RXp4eanMhsoO6w/YDxAZXiwymJXNZfPtl6aQSoY2bieJs3OLNWt3Y9XRoP8YmN0sPp
 +tddM22r5+uquIhtCyZajxLrtBFjZj0ewTx3o3AMcylnVEPZNL3MTkJZGbWnw/ZDRWMQ
 ZUaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=xz3A6xl5ya595zoZHjHSS41TmX4fAGs0v1xk0KBT4a4=;
 b=sIGHMqxqE44soAuyWRYSLKZIIgQ2MshjAovWzE4o0TpTFBiE90nKvy+cy2j/3+t/za
 Y+vu9awI429XoaCjjRRAWJuJY8bkypY1cU7stHpCHNEurFnXlnCqrZgjafsj3G3FYOBZ
 2PX6xNbi3el5cKiQ2RyVqPs7MBkpayWGF6uIp+nNo8S39mwc45jPmWagyc6axQwsLOva
 TuY7DZK+wjGPNAw7pK1MwKDF86lhmeGjFoKM20ph/UQ30nyjMF9fdxQ+c1BwJEJ/LT06
 EMdJs3ijyxUHPNc+fDPWC3QBgOyyhmludv4YiLZezNS68dI2qljFyK160ROKTCogwLLd
 vcoQ==
X-Gm-Message-State: AGi0PuZmtaCoRNQ9mPsWXVoEaPKS43nCXKqwgpZZphkPN0ZopeqodUI6
 LEpCzQisXZdIbXCojINxDs0=
X-Google-Smtp-Source: APiQypJCXH01zzeVIyoTb/Rrgxg/w3McvgN9cYY/iqBCMLqWUB/lmmWRuJjSubqFbjV5gp8Q5dGglg==
X-Received: by 2002:ac2:4c9a:: with SMTP id d26mr18047161lfl.112.1588063002572; 
 Tue, 28 Apr 2020 01:36:42 -0700 (PDT)
Received: from curiosity (ip-195-182-157-78.clients.cmk.ru. [195.182.157.78])
 by smtp.gmail.com with ESMTPSA id
 t12sm13732265lfq.71.2020.04.28.01.36.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 01:36:41 -0700 (PDT)
Date: Tue, 28 Apr 2020 11:41:08 +0300
From: Sergey Matyukevich <geomatsi@gmail.com>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCH 2/2] staging: wilc1000: adjust for management frame
 register API changes
Message-ID: <20200428084108.GB4287@curiosity>
References: <20200428101400.ae19d651ec38.Ieb15844bb5ab93b3d7931d6561f42e3316ef8251@changeid>
 <20200428101400.bac7e94c2bf8.I6a2287b9f68f35aff5f6de409c5ffa388de760e2@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428101400.bac7e94c2bf8.I6a2287b9f68f35aff5f6de409c5ffa388de760e2@changeid>
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
Cc: devel@driverdev.osuosl.org, linux-wireless@vger.kernel.org,
 Johannes Berg <johannes.berg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> From: Johannes Berg <johannes.berg@intel.com>
> 
> Adjust to the API changes in cfg80211 for management frame registration.
> 
> Fixes: 6cd536fe62ef ("cfg80211: change internal management frame registration API")
> Signed-off-by: Johannes Berg <johannes.berg@intel.com>
> ---
>  drivers/staging/wilc1000/cfg80211.c | 36 ++++++++++++++---------------
>  drivers/staging/wilc1000/cfg80211.h |  5 ++--
>  drivers/staging/wilc1000/netdev.c   | 21 ++++++++---------
>  drivers/staging/wilc1000/netdev.h   |  9 +-------
>  4 files changed, 30 insertions(+), 41 deletions(-)

Reviewed-by: Sergey Matyukevich <sergey.matyukevich.os@quantenna.com>

Regards,
Sergey
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
