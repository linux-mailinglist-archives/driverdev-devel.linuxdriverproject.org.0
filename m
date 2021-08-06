Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF1B3E2C22
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Aug 2021 16:10:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 85D25828B3;
	Fri,  6 Aug 2021 14:10:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2_Ytxds3ZWj6; Fri,  6 Aug 2021 14:10:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B3EF381A58;
	Fri,  6 Aug 2021 14:10:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8D23E1BF321
 for <devel@linuxdriverproject.org>; Fri,  6 Aug 2021 14:10:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7C01940581
 for <devel@linuxdriverproject.org>; Fri,  6 Aug 2021 14:10:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qYJ8DXq8A0ay for <devel@linuxdriverproject.org>;
 Fri,  6 Aug 2021 14:10:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5449640580
 for <devel@driverdev.osuosl.org>; Fri,  6 Aug 2021 14:10:33 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id x14so13170556edr.12
 for <devel@driverdev.osuosl.org>; Fri, 06 Aug 2021 07:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=/oMubRmlLM5EZ/UdY6Fj3wsfS2kyoMzN9ASXgZ3xneY=;
 b=q3xyYt1HrVQnyL1KZndhIFKim0Z6RZXWCajZa6+jKaUt/xPBmWrU2b2TpwIqgxHoY3
 6sUeXJPoUC3zz+xqx5Y/7bh16ON7BcCcP2liy5jl/yv+hyxVGmxIcBCDJXoapuOO0RIl
 REN9Zv+ClhtVVEMybVDTEUTnyt+YraWqvgNO4CiPEvSNbjJp0ymaQzc4FwPALfOqM4La
 f+KzIMXFoGuca5XlZdCXXnnqi+xUiOGsem/cV9JUjNFonSZWOzEGazowyEr2eG3dp5DR
 pLBa7cN2FmOkeXw/dSFAaB7k29Eu0Yivashc8iQbXHlro4ZoI7aiyRP21+G8wGDlMmu6
 HPDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=/oMubRmlLM5EZ/UdY6Fj3wsfS2kyoMzN9ASXgZ3xneY=;
 b=X4NvgKqCt5gm39bl8p8iewQd1VFjXO5ne/P5g6CDw5twQ7oLPIfxRjYEUmgNFz5ZkW
 2UpJlfVtrl7uElWAaQ3NFqQM9Zmu6bkkLh7EUZDTz9nbQD4m2AkUyEGXAIFIsO9cvp4P
 fBcb5w1arN/5pgnm2UeXzmW3Zw0TBdPNkFM1/sl7pSciySHkXNFqrpO1Tvy+KCJ3IJR5
 wnyhVaS4wwWxQyrZ/0I0SM5EhIO4oIlf3cXsR/HyMmivTg8eB7HtYAzmMPeB4CZNfZjv
 5FTixGydqtSuzQxlCTqrNFNKvpdPCrGWXsFWIZW2/xsZOs8IyQLGazfca6K2XqLms+du
 8TUA==
X-Gm-Message-State: AOAM530fyvOswkBxdGevyGEvd7c1wF0HFOiNjm+0Ivb67SfBx5X/avIJ
 2BBVuHGs2jHt2tvZXD3OmSn3Wisd7FPBPJVPSA==
X-Google-Smtp-Source: ABdhPJx229jhz+o+nQwdgIkoqR5HwLh3S4+JGHt0eG+5fB4X3WTmNmInTj1ZpuXDIVm9CYEhhFZzLyuZYbLrplGdX6A=
X-Received: by 2002:a05:6402:3094:: with SMTP id
 de20mr13526197edb.272.1628259031175; 
 Fri, 06 Aug 2021 07:10:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a54:26cf:0:0:0:0:0 with HTTP;
 Fri, 6 Aug 2021 07:10:30 -0700 (PDT)
From: Maxwell Watford <orchowskiruthi@gmail.com>
Date: Fri, 6 Aug 2021 14:10:30 +0000
Message-ID: <CA+q9Q6OJB6Z0+y=5_3MBDNGkAUG9rVxg7bZVma38uDOvJ+sOGw@mail.gmail.com>
Subject: i need your reply
To: orchowskiruthi@gmail.com
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
Reply-To: mrmaxwellwatford@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings,

We are writing to you from Ecowas Finance Controller Office Lome Togo,
because we have received a file from the Ministry of Finance Lome-
Togo, concerning an Inherited Fund bearing your name on it, And after
our verifications, we found out that the funds belong to you.

It has been awarded and I will like to guide you to claim the funds.
Please contact me at my private email address
(mrmaxwellwatford@gmail.com) for more information and directive

I am looking forward to your urgent reply,
Best regards
Mr Maxwell Watford
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
