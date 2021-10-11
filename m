Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E0521428B0D
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Oct 2021 12:49:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DCCE560868;
	Mon, 11 Oct 2021 10:49:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tD1qhi5l26Ee; Mon, 11 Oct 2021 10:49:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A60F60854;
	Mon, 11 Oct 2021 10:49:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C22191BF2C0
 for <devel@linuxdriverproject.org>; Mon, 11 Oct 2021 10:49:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ACD2C402E1
 for <devel@linuxdriverproject.org>; Mon, 11 Oct 2021 10:49:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FywI7RQBW-y3 for <devel@linuxdriverproject.org>;
 Mon, 11 Oct 2021 10:49:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E29D3402AC
 for <devel@driverdev.osuosl.org>; Mon, 11 Oct 2021 10:49:40 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id o20so54653811wro.3
 for <devel@driverdev.osuosl.org>; Mon, 11 Oct 2021 03:49:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=DOxN63QWnl4dBNWQl+LufsBrewR+8VuPJnGph7ijSeE=;
 b=E93tURIO9POE8O5I8b88TdE1G9oXUFqthC+02pPE/D8euG9zFxFM/4QKwJ8TV1TCO4
 Q3emxRVuwntqVbTUNqkEZDDX0VTI6JRoYzVbGc1iDNb0nm9Owi/6zRmXGEqaj9GYer7Z
 HeB+/SRHHZNws9W7yC3b5U9YMCBpaFCv8Oc+cnqD+6ol1BRT3qbDwMbZaVbDuoqv0R3a
 DFNtkuhdT7vxH7KLnpYD8/GDuwcNwmmIiM5vbnejLGLfqRrIVZuJN3UItgfBCR2t8qWE
 E1c39AdreoM+t/auQn964pOU37DhNrEFuxltiOXR2G5ZGm6wKxLHxYZE2dKW+qZ3BdvF
 kFeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=DOxN63QWnl4dBNWQl+LufsBrewR+8VuPJnGph7ijSeE=;
 b=AEPd4TinlN7jZH/SCQGgVTzDMckVpO/FdcfxorY0Zwphr1rWM5lsrReH56wumghdO3
 8/1eW/L17hrhKhgv6s46L2OnH0sgmrfv7qQr86PrhlPNSDku2iz6QfWrN6gGFNslVASZ
 uelxtfOfjvyu39ncjsOpxBex+BJbKPZxp9LykxX9z+AfJ65SqoC/3mnD92KW6q6SHE3O
 zJ3X3JAiAT+9xg/MDa2M5B3Xe8VRUXgigibVwbEqbF7Ps6Vm22FhcY+w/rKEpgZwnqXE
 Pl2U32oDs3OtpDYApxlQfDIebJ3UxSLTsa+C9AUhZ9gE1BeWr/vJYipthitafevBCn/n
 7VMQ==
X-Gm-Message-State: AOAM531H2/Mj4jR1fz2ipYZHoQ+C4UJDWKNp7kOZJRSV8SJrTLjhw+I0
 acS4eIOFFnWbpK2fEYmNiSVYgNmzukPG1MWAQ14=
X-Google-Smtp-Source: ABdhPJw4IyIdOZvD7p5ObDGIwMXQVIVZ+W6Wt1EdzPJJhbWJ75VzgynPO+I0Aboy/lOQJ/YO5paflujKZTqGEnwxwDA=
X-Received: by 2002:a1c:2b04:: with SMTP id r4mr19461054wmr.168.1633949378880; 
 Mon, 11 Oct 2021 03:49:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:adf:dd8c:0:0:0:0:0 with HTTP; Mon, 11 Oct 2021 03:49:38
 -0700 (PDT)
From: "Cr.David Ramcharan" <convy0101@gmail.com>
Date: Mon, 11 Oct 2021 03:49:38 -0700
Message-ID: <CADDRs97AgoJC_0t7A3RGeDtst=Jp4YY_5XgiW4KJW5s44m0L-A@mail.gmail.com>
Subject: Thank You
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
Reply-To: ramcharan9910@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Please I am writing to notify you again on my intention to list your
name as a beneficiary to the total sum of GBP6.350 million (Six
million, Three hundred and fifty thousand British Pounds Sterlings) in
the intent of the deceased (name now withheld since this is my second
letter to you).

I contacted you because you bear the surname identity and therefore
can present you as the beneficiary to inherit the account proceeds of
the deceased since there is no written "WILL" or trace to the deceased
family relatives. My aim is to present you to my Bank Authorities as
the Next of Kin to our deceased client. I will guide you all through
the Claim procedure by providing all relevant Information and guiding
you in your decisions and response to the Bank Management. All the
papers will be processed after your acceptance.

In your acceptance of this deal, I request that you kindly forward to
me your letter of acceptance; your current telephone and fax numbers
,age, occupational status and a forwarding address to enable me submit
to the Bank Management the details as the Next of Kin to their
deceased customer. Reply strictly through: ramcharancrdavid@gmail.com

Yours faithfully,
Cr.David Ramcharan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
