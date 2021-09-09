Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FB5405F91
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Sep 2021 00:27:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5BA8240674;
	Thu,  9 Sep 2021 22:27:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tUzHFJ1vlY-j; Thu,  9 Sep 2021 22:27:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA4F340660;
	Thu,  9 Sep 2021 22:27:48 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C30AD1BF27A
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  9 Sep 2021 22:27:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B2B72606D9
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  9 Sep 2021 22:27:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 01b8DUV5mzfE
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  9 Sep 2021 22:27:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8D846606CB
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  9 Sep 2021 22:27:37 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id ho42so94742ejc.9
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 09 Sep 2021 15:27:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=81AH/w+a52knA/4jhoSaUWE+0lwC6L0d+6fPTBpnHOk=;
 b=SlGxjmnPXUXBKO6HoXuzrjECHiiJQOpaSjPC6fV6lkemG4kTOHx3rCim1i3Wp1RL1E
 0gBBYN03EcT0wt2kO91qrVQxMA9TtbwPNWPxjkGiJqV3Xez5CyLRHUn6FKQUt6U3dJr3
 C9oBDNC5vS1geUmnAsJY1DlKeRU2Wc2yYa2jHzL5uVG2QthhLqCvqMskb+lTojOWh7KZ
 xw8Z0jiVGc/BteGxFS2qr+SH9LJ5BFIZCeJrMRCFTOxz1ZV/nE/cmzSivxjpQapzTzwZ
 v1gXnJZI7EhzuFO8dXnAlsW+2eGhThNJM9DJwuroEujtw2db85s1F8LtzdyHTkwXhNLc
 Z5SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=81AH/w+a52knA/4jhoSaUWE+0lwC6L0d+6fPTBpnHOk=;
 b=YTi9Z4WNmQMxlC+9gmar+1qVpIdqBBdY4poUwUSwPaYPjvU+tYmLc2jFQFiX8TWvhB
 5KgVpvi27opc4h0OaPxJE6JKfbhVO/4zF80AZPVtQlGRqqObt5rTmHvaLYyMBjY60pnE
 0+N7uTS+cI4nCOFv/RvoT0N9ikaBlzta4Fwgkflo9c3AM4ZGUjW1O8oM9LRT1NZwxjr5
 GZB4AO7RK2WqoLwlezxw0htiDvlJYDpC9a+t81L6WANWkDazq17cT4MdUuSOi/pIhm46
 ZK6seZFCqZhqyWSb7Qshfmc4gVNsQKpBa1GxdbwfUodnC447TVQBoNUE9k/kKmnpxRiX
 1fuA==
X-Gm-Message-State: AOAM533OmZXzc9imfWHP7/6O89tu9+I6+flsb+108xtEG+vO8wLhTct2
 VmXZj3TgAmH2/eGzvFAquetDeuao/hDKXuD3Lbk=
X-Google-Smtp-Source: ABdhPJzbiIEDx8WQKkRp5Oqipow7nTSkZLlDc6zWUrdKlSDsyMfBHUfTOvOD7vd1tyOO7hiV61gJoKoQocbSy9cbUMU=
X-Received: by 2002:a17:906:478d:: with SMTP id
 cw13mr5597175ejc.227.1631226455554; 
 Thu, 09 Sep 2021 15:27:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a54:224e:0:0:0:0:0 with HTTP;
 Thu, 9 Sep 2021 15:27:35 -0700 (PDT)
From: "Mr. Ashley Sherlock." <hitblaze01@gmail.com>
Date: Thu, 9 Sep 2021 17:27:35 -0500
Message-ID: <CAHOnDzaRbC1BDcq-1jxCOJeHZGde7-oHj3vEAdCitePPt6ybFQ@mail.gmail.com>
Subject: ATTENTION : BENEFICIARY ,
To: undisclosed-recipients:;
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
Reply-To: ashleysherlock009@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
-- 
INTERNATIONAL MONETARY FUND (IMF)
HEAD OFFICE NO: 23 ADEBOYE ST,APAPA Abuja.

ATTN:BENEFICIARY

This is to intimate you of a very important information which will be
of a great help to redeem you from all the difficulties you have been
experiencing in getting your long over due payment due to excessive
demand for money from you by both corrupt Bank officials and Courier
Companies after which your fund remain unpaid to you.

I am Ashley Sherlock. a highly placed official of the International
Monetary Fund (IMF) It may interest you to know that reports have
reached our office by so many correspondence on the uneasy way which
people like you are treated by Various Banks and Courier Companies
across Europe to Africa and Asia and we have decided to put a stop to
that and that is why i was appointed to handle your transaction here
in Nigeria.

All Governmental and Non-Governmental parasites, NGOs, Finance
Companies, Banks, Security Companies and Courier companies which have
been in contact with you of late have been instructed to back off from
your transaction and you have been advised NOT to respond to them
anymore since the IMF is now directly in charge of your payment.

You are hereby advised NOT to remit further payment to any
institutions with respect to your transaction as your fund will be
transfered to you directly from our source.

I hope this is clear. Any action contrary to this instructions is at
your own risk.Respond to this e-mail with immediate effect and we
shall give you further details on how your fund will be released.

Also call me as soon as you send the e-mail so that you will be given
an immediate


Regards,

Mr. Ashley Sherlock.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
