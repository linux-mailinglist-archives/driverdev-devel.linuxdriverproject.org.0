Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B596D3D0EE5
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Jul 2021 14:44:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D575405AA;
	Wed, 21 Jul 2021 12:44:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UhEI64lTS1pU; Wed, 21 Jul 2021 12:44:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 557E840347;
	Wed, 21 Jul 2021 12:44:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 123621BF3F7
 for <devel@linuxdriverproject.org>; Wed, 21 Jul 2021 12:44:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E80E0607C3
 for <devel@linuxdriverproject.org>; Wed, 21 Jul 2021 12:44:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 68CiLMeTIC8F for <devel@linuxdriverproject.org>;
 Wed, 21 Jul 2021 12:44:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com
 [IPv6:2607:f8b0:4864:20::52d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 793BC605DD
 for <devel@linuxdriverproject.org>; Wed, 21 Jul 2021 12:44:40 +0000 (UTC)
Received: by mail-pg1-x52d.google.com with SMTP id s18so1744015pgg.8
 for <devel@linuxdriverproject.org>; Wed, 21 Jul 2021 05:44:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=IfiM5ajwpMKVmVKFxd1X3qI6YP/P9cBuvcjkbLoxfmE=;
 b=LL3uIz/Ek52yFGnGvaOHaDraKWRsxdEUsCtbDDmw1DXCclxRabqC4P6x9tWn4YRwR/
 5lVXUcAzYjujLO+OP8riUmro1dCZs89uWG68KQ4SMUeAtxO4RDWTzrkRh7SlCWnP7p9y
 6fweop9XzZPVjmfWYDMfi33X8jbxlYrdyq2i5Wtl90d1sYyE1LG5B5DF96Asr0IYrt3n
 cyQdR7kW4chXGIoWKCdPqZ2XBy8AdI6shJ4/qgKK0MV0klAC7h5Zj+IAWshvqXQTuAah
 4bQdxBzECZ/JUbO492ZEeaR8Al3akfABvekD70UduBN01X2MXA6lqh5OyFZN8t/se55+
 tH+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=IfiM5ajwpMKVmVKFxd1X3qI6YP/P9cBuvcjkbLoxfmE=;
 b=MBy0Ef8W0mA3tOUB9lQvL/8c46NSDV2Nx8VzulEi3RY8G4nqn1kigsOlsFTAGFHPzc
 rs3A55fhBUJw5jNF2042dKwlGXWdPdmtClSdLvMl3lPf6wNFpDhaKhuCc2p8bZtsF/Ba
 1dHhmk20jpIJgZccTzpc7QJq0f4+Z/NWw8kiYck4UyzJEFTbbGI1a3OVtFRrcOJzi6yS
 c49jXDZ1SKf9+7eubQFr0jL+ryijMYqxUo4LKTpK17OEqFHao8DZhw2bVtbUw8Uw0ijh
 qWo11vc/x8F+B+IYruDHB1egAxtMC6GN0dtaltRL1mKcoT3IXmGnyTe4WChELuDHJ7uL
 CedA==
X-Gm-Message-State: AOAM533i+0d6ZqbJ3STZKk2AnTnOoyOduITxTFIoYpdyfUTb0z3+HzVd
 w+1INnCx4rsoO2KgnTcZZWqEhe48ZO7wKw==
X-Google-Smtp-Source: ABdhPJw2mxISVpc0/OQnkAAa6lg6LHc9kk7xLgkNDU13KyOoWQOz6UI+n7EuFrIXg234J0hLB2ZtIQ==
X-Received: by 2002:a63:c04a:: with SMTP id z10mr20318796pgi.99.1626871479954; 
 Wed, 21 Jul 2021 05:44:39 -0700 (PDT)
Received: from localhost.localdomain ([2402:e280:2130:198:9b25:1cfb:9ff3:2a8f])
 by smtp.gmail.com with ESMTPSA id a23sm27869454pfa.16.2021.07.21.05.44.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jul 2021 05:44:39 -0700 (PDT)
Date: Wed, 21 Jul 2021 18:14:36 +0530
From: Benjamin Philip <benjamin.philip495@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: rtl8188eu: remove unnecessary blank lines in
 core/rtw_ap.c
Message-ID: <YPgWtEI+4JnTrPvW@localhost.localdomain>
References: <20210721105808.63735-1-benjamin.philip495@gmail.com>
 <YPgA+QB82Pjm/76B@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YPgA+QB82Pjm/76B@kroah.com>
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
Cc: devel mailing list <devel@linuxdriverproject.org>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I have built the file without any errors. I did not need to make any changes.

I apologise for not building my changes. I shall not repeat it again.
Should I create a v2 patch and resend, or will we continue from this patch ?

Thanks,
Benjamin Philip
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
