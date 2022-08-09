Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5210158E03D
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Aug 2022 21:33:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9EA4360C12;
	Tue,  9 Aug 2022 19:33:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9EA4360C12
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kE27HZ-Ylzd8; Tue,  9 Aug 2022 19:33:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62805607F9;
	Tue,  9 Aug 2022 19:33:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 62805607F9
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 067BC1BF31A
 for <devel@linuxdriverproject.org>; Tue,  9 Aug 2022 19:33:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E26BC80B57
 for <devel@linuxdriverproject.org>; Tue,  9 Aug 2022 19:33:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E26BC80B57
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i-zlClPJmXlz for <devel@linuxdriverproject.org>;
 Tue,  9 Aug 2022 19:33:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7EDDE80B2C
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com
 [IPv6:2a00:1450:4864:20::231])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7EDDE80B2C
 for <devel@linuxdriverproject.org>; Tue,  9 Aug 2022 19:33:30 +0000 (UTC)
Received: by mail-lj1-x231.google.com with SMTP id u6so8648624ljk.8
 for <devel@linuxdriverproject.org>; Tue, 09 Aug 2022 12:33:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc;
 bh=ulYhSZKycHUI238s+4IcP8mhsb4c7rE/4KTM9gdb0r4=;
 b=7dHVLWBAF39LINo6RZYWkpMlG1v+4eJaCWNKbS6+28Ml+yo7zhuOETj770cjKqmKO/
 TW5gEgDksHVzjp+yWqY1ArLgv+MIvs1CnQ2WATdyDty5jz8ElFZmKi4Tfz1XK1Rl6++/
 B6RYwBpyNax0mVyCd5AAWPzapXyk1O2bQNAGyjykZrPEFiGfx4awW/by8uF6EwrYOQTc
 rpR4dniE5lqXBUzIB87wS9aUzfLF6xA71gZ96daNGYLgVz083lN99v6F11sxBPYp8mkt
 fehXJ8n1XZx98o1pHi5bw4GcNuaMbQxESlDs25GT31jWeiL6Rw4R4h49M0Hc4HAC76EX
 wQnw==
X-Gm-Message-State: ACgBeo1A6GS1uaRlAvY8GGyUGSyERyn/b0GQxga5b45rFRUQvhTt1JQF
 FIVaEjPhgvfWnrpUo7yE6uu/cHZQ2fVqf3KRsQk=
X-Google-Smtp-Source: AA6agR6e0Sjfw9u/5YVzJYKa0NBjYrQ1f14mDv3A+u/5Pr363PCRlm4WbsNa3is+nLveY29VWoqbxUBGDOdy/t+FlBc=
X-Received: by 2002:a2e:9786:0:b0:25e:71b6:c5cc with SMTP id
 y6-20020a2e9786000000b0025e71b6c5ccmr7806204lji.52.1660073607761; Tue, 09 Aug
 2022 12:33:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:651c:515:0:0:0:0 with HTTP; Tue, 9 Aug 2022 12:33:26
 -0700 (PDT)
From: Felix Kilmar <mohamedwasir@gmail.com>
Date: Tue, 9 Aug 2022 19:33:26 +0000
Message-ID: <CADHk_Zrb2dM9PaU-MnHcNjPHo9FhqEdjQKJEFYmur2No_PLDrw@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc;
 bh=ulYhSZKycHUI238s+4IcP8mhsb4c7rE/4KTM9gdb0r4=;
 b=ArnHEbYdyV3TlpRE8mTyhIhXVv//SsEYzDX2mkWm+SYwrg53YlcVQ8etRs4zS/TzeC
 hnQBoQyAUfwH+X9+NYlyG4ewKZn/640sGyH+2tkKDgMX2N8zUCDNDr43E1E3rf5Ho92b
 Mf4Tzmzd8SfFlGyRdqMo3/isf2FQK3Q4tajMQuWFoc/FoM7X7d4i2LtnGnLSor3OL6D7
 +lD8+gjvD5x1nUxtF2WA/jAPoEzNxSnMq0mEPSCBScVwHrv5IetRsuRp02Bki79lcJjB
 FCP8cUhDyC820gbjndbwydTHU2vMdk0myI+/fpAjm3StES3Xr8MeW1dwRk4D6ckw/OXK
 1aoA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=ArnHEbYd
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
Reply-To: kilmarfelix@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I am bringing this notice to your attention in respect of the death of
a client of mine that has the same surname with you and his fund
valued at $4.5 M to be paid to you,He also deposit 350kg gold bar with
a company in Ghana.contact me for more details. Yours Sincerely, Mr
Felix kilmar, Attorney At Law.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
