Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5E181F659
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Dec 2023 10:37:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1CEE0610E7;
	Thu, 28 Dec 2023 09:37:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1CEE0610E7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pNnCcrl_1zFa; Thu, 28 Dec 2023 09:37:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF55661002;
	Thu, 28 Dec 2023 09:37:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF55661002
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B29A91BF2F9
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 28 Dec 2023 09:37:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8B128610B4
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 28 Dec 2023 09:37:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8B128610B4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qVPOczn1eCa8
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 28 Dec 2023 09:37:22 +0000 (UTC)
Received: from mail-vk1-xa35.google.com (mail-vk1-xa35.google.com
 [IPv6:2607:f8b0:4864:20::a35])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6724661002
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 28 Dec 2023 09:37:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6724661002
Received: by mail-vk1-xa35.google.com with SMTP id
 71dfb90a1353d-4b68fefe9fcso1093191e0c.0
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 28 Dec 2023 01:37:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1703756241; x=1704361041;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=6wpRmhPzZYewxgNPeLpQCxgoFM946UyixDuR+kE4Hhc=;
 b=my0+bTU+//F6Hu1qE53LFcHZ6Ps+F4f91C3p/cSnMthqYGqklR1C0MuruP5qahHLqj
 oqoUh3lAHcRFxLtbd8QEdRnVL+l09b8/S1uvI4pDoiupHmSIUxX4cKVhrndp/mVNU63O
 OT/BEENYwDdvB7GMqR4UCwLgwZoBVazAw8/Y0aaGtvZm1Obl8Mb0doD2yP9mr9By6Py3
 a0idAMDM3CZ648S6A8hssk42pCAfhegYdUpue9Rr8Q7BK4hS/3LSNfQLa6oLTqeAl2+Y
 pmBQS4fx7dJ0YKfLnPkE4Zl13Vrg9GCEDc5LhUiHLbabQwVshZahw5VHqTv72svJnKMn
 zIfg==
X-Gm-Message-State: AOJu0Yy2E7vGPsICLbBSR4khnKBZ0UtLSCvIRcn2Ugcv2C6GsZB0VZ+7
 DCvrmezIlP7AjNKLd/ll9ycqEh3YJh/ZLDpNt40=
X-Google-Smtp-Source: AGHT+IF1JRPRipMWdvxAmzDiH2tNEN0xv87T4IRSZil+fs+fPlArXuyjHzKliG4IrcfUpl0cSVYvKTnCYB0rEaTde1s=
X-Received: by 2002:a1f:ee4d:0:b0:4b6:bdba:8460 with SMTP id
 m74-20020a1fee4d000000b004b6bdba8460mr3445502vkh.9.1703756240754; Thu, 28 Dec
 2023 01:37:20 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a59:9ece:0:b0:43d:f766:c866 with HTTP; Thu, 28 Dec 2023
 01:37:20 -0800 (PST)
From: CITIBANK <awarymrchristopher8@gmail.com>
Date: Thu, 28 Dec 2023 10:37:20 +0100
Message-ID: <CAAMtbaiHV2YCWcBgF87jmC6ePNmNpqVnmywHRKBqVJEBjExXVA@mail.gmail.com>
Subject: WELCOME TO CITIBANK OF AMERICA
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1703756241; x=1704361041;
 darn=linuxdriverproject.org; 
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=6wpRmhPzZYewxgNPeLpQCxgoFM946UyixDuR+kE4Hhc=;
 b=MljocARNsBYgd8MMvZzp2Asfx45ngA4e9SM//h9X/hShHoBBz8tQ3qCEby86nryZgj
 ZYIMiGePGK1s7wYM/m3N/04heRkAIdzfrpge9sVaYCR/5uTFditJyh+UUeF/qpAkB0u6
 eeAM6NSEIK+/Li199bd0zJJ7IdHKZr6iD5n/URI3KuXwDRMmLgjduDu1yERbg4J3qW2O
 XkN4LxutVDO7TyoyqeIOygByu0UuTHotu6JveIXsNajqFSCKIIcrsypPFSI0i8g385Ig
 JvzG2b1vlUNSyzIeAj1DbGUxS25iAhzJbdz+YOagmvN/gQ5KhnjlNLYXDVprcbcorZLo
 EETA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=MljocARN
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
Reply-To: citibankofamerican8168@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

WELCOME TO CITIBANK OF AMERICA.

1 Pirat St NE, Washington, DC
20543, United States of America

TO YOUR ATTENTION!

This is to inform you that a compensation payment in the amount of
US$20,800,000.00 (Twenty Million Eight Hundred United State Dollars)
was legally approved
and deposited few days ago with our Bank, Citi Bank, and it was
deposited in your name by the
foreign debts settlement/compensation committee. and they instructed
us to credit this fund direct to your
private bank account with immediate effect,

However, Please note that Citi Bank have decided and agreed together to
send this payment to you by either
(1). Bank Wire Transfer,
(2). Cash delivery or by
(3). ATM means.
Depending the option you would prefer to receive this
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
