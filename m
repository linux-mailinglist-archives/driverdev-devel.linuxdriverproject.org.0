Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 883AC54C3C7
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jun 2022 10:42:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44FE341927;
	Wed, 15 Jun 2022 08:42:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bpKkR8e3yZUy; Wed, 15 Jun 2022 08:42:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C94994190F;
	Wed, 15 Jun 2022 08:42:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 85AA21BF954
 for <devel@linuxdriverproject.org>; Wed, 15 Jun 2022 08:42:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6C05E60E02
 for <devel@linuxdriverproject.org>; Wed, 15 Jun 2022 08:42:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l1VRM5kb9iLj for <devel@linuxdriverproject.org>;
 Wed, 15 Jun 2022 08:42:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com
 [IPv6:2607:f8b0:4864:20::d43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6F9B2605AF
 for <devel@linuxdriverproject.org>; Wed, 15 Jun 2022 08:42:48 +0000 (UTC)
Received: by mail-io1-xd43.google.com with SMTP id n11so11921181iod.4
 for <devel@linuxdriverproject.org>; Wed, 15 Jun 2022 01:42:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=1R7QEns6SeLF4RF2W+MZFV8Zwml7y3Gyz1nMs5FINvg=;
 b=eOQbhpK53F6sbnLiZELqQqsKGU52fzG9Num9Pa+VfzK89tJAzCZ/IVaof0iTuHAzYz
 M0RQfHHtDI1i7JBD6PLhZoZKALIMFYaYgmsL3uE4SaWOTUUHzwIv5wry2tulZvnjn74h
 iSEj2U6+GaBivUHVCmopPhTjqn65aYjRw9eP4568y1rCBr3/KWdyRS8hiGPBuTjBOBp0
 Zn1ZUxMENPbyChAhlPAibT4WSWLKGdibsT0A2Os6Aw0M1B+QDrsjf2daFyEtsju+TeLV
 xhiof6XIjkVXht3oCD6k2YBmQktbBIKZiUkMAUVSoZqdnY10P+S/mVuu39sDei6E/QEH
 5V1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=1R7QEns6SeLF4RF2W+MZFV8Zwml7y3Gyz1nMs5FINvg=;
 b=JJ8iBxP+t5U0R471voHNvO4B5azPl+afxUFep3hcQFBzWsweuAHNNWVSIpAAeDuh1z
 tvp1FIndKw9W5EgNo378XkEDbVtO1wURkXUVnYGxwsJu6VjmwrSFb7Ch1mmffHNfwltb
 /mSzaQI9DikSI+no+bOYrbpbKgG6F2wwrW1PZMtcUF6eVtZyh9StpjukDkT9JGIWyJgB
 rIF8L6g1wsKZWke5lrVxUxDZd+Mw54QGif20BXg8x9TvZidIvK00Eg8P+hGt0y18tv9O
 Up0YMKCLNaDAtrvq/a+QTv7VMOU86w6LIPrCZSpxX6k3Q8I3kSJOv3jcEDkx3IoYdUQA
 Zheg==
X-Gm-Message-State: AJIora9SkOmy+PSbCoIAZx1zXA+/q0I2bAlVgyi2tqgHNJJnJDmlG/4e
 d5vuYad7COCXRjV0qEjB6aHbRBNpzbLEfJCkZxk=
X-Google-Smtp-Source: AGRyM1upVl4rtIlNrBZf2x8qdgHdu3BQ03JsNBHRcHJkBw3tsOkQvHkS2ve2CoaZD8j4xfmPG6bBiU9ejD0sfCqqnF0=
X-Received: by 2002:a05:6602:2010:b0:66a:3c7f:dd4a with SMTP id
 y16-20020a056602201000b0066a3c7fdd4amr571882iod.149.1655282567316; Wed, 15
 Jun 2022 01:42:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6602:2e8c:0:0:0:0 with HTTP; Wed, 15 Jun 2022 01:42:46
 -0700 (PDT)
From: SM85   SMITH <sumiericardo@gmail.com>
Date: Wed, 15 Jun 2022 01:42:46 -0700
Message-ID: <CAFV0fz+rG=i3c7TTQyTppiVhJ1SMycvvmxV7Mn-dOp4u-X7now@mail.gmail.com>
Subject: urgent response this your beneficiary for inheritance fund
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
Reply-To: sm85smith@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

compliment of the season

I know that you will be surprised to receive this mail from me today.
I consider it imperative to introduce
myself: . I am Mr Roland Max.
I work with Turks Bank groups

This letter is highly privileged and it requires your immediate attention
because we lost one of our big customer who happens to be from your country
also has the same family name as yours for the help Microsoft fine out
both have similar Email address.
That is why i can reach up you on Email and he had a fixed-term Deposit
worth of (US$7.5M) with our Bank before his death.

This fund has been order by our late customer to move his fund to nationality
Any organization - charity  or Anyone from his country as beneficiary
inheritance willed fund.
I want to present you to the bank for the beneficiary inheritance fund.

DISBURSEMENT/SHARING OF THE MONEY.
I will have 60% while you will keep 40% as your personal commission.
once the money is transferred into your account.

This is a very safe and 100% risk-free involvement
As its  AM  next to his account officer of our late customer.

if you receive this message in spam, kindly know that it is network problem.

Don't Forget To Reply This Email Only:  sm85smith@gmail.com

TNKS IN MILLION FOR YOUR URGENT RESPONSE


Best regards.
Mr Roland Max
Happy new week.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
