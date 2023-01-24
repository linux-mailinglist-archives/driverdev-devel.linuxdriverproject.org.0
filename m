Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 534D2679E6E
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Jan 2023 17:20:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDF988211B;
	Tue, 24 Jan 2023 16:20:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BDF988211B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SzXjshWAIb6N; Tue, 24 Jan 2023 16:20:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 965E3813B1;
	Tue, 24 Jan 2023 16:20:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 965E3813B1
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1EB1F1BF36F
 for <devel@linuxdriverproject.org>; Tue, 24 Jan 2023 16:20:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EADBD8211B
 for <devel@linuxdriverproject.org>; Tue, 24 Jan 2023 16:20:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EADBD8211B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5S9E0g3VzQzd for <devel@linuxdriverproject.org>;
 Tue, 24 Jan 2023 16:20:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 07968813B1
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 07968813B1
 for <devel@driverdev.osuosl.org>; Tue, 24 Jan 2023 16:20:34 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id q5so9743916wrv.0
 for <devel@driverdev.osuosl.org>; Tue, 24 Jan 2023 08:20:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=8K14qJ6Ro1/mQzioNMElj5XNtfSKCBkWNmckn1KoVf0=;
 b=ngmQHJ/EyNU/goyVt2y2XVhb+eCvS8n3jjWuLGHqyhz0ZyjuDNL8caY4l/EHg9+kps
 diG28X2TtVhgrFlovNCaMw3470Op6PVI29ZmV+lIFiDR9cVqXRT6J4G20ZlDDD4cGXO1
 VXK1zhCgr3z9k9kyX78qMOkV6nP6VJSkyLYBvAzfvP/b/Imt1E2EZIjro8A9ObYOUef4
 pTxjtngrCE4ShYVCjx42+mF9wOOzRtbUAj+K0p6Ez9uR0oO5Yrmstk4/Gawnr93iWzAh
 vI7DrziueONsZXnxC81OHUEgcz4lQr4gqwBfCV09eF1pTBIR0IzNVWmHR/bkhfiD9l7a
 gYZA==
X-Gm-Message-State: AO0yUKX356sXfxSUm8SnxekZukhZuZ5cjr8tzqeODql45g+RBrvkTfNe
 61TMDD28nvF+W4OJlcCsmNIAcUrnC8toj9B9nfg=
X-Google-Smtp-Source: AK7set9bYa9b6qF8poW5hLBxFcFSMihAPrcy+hf7r+7IDBEEw8uwpvvESnnyYhYZySFE+wBxD/SnA0DgPCFqEZa/MKw=
X-Received: by 2002:adf:f60c:0:b0:2bf:a757:2c7a with SMTP id
 t12-20020adff60c000000b002bfa7572c7amr169714wrp.120.1674577232979; Tue, 24
 Jan 2023 08:20:32 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:adf:f94c:0:0:0:0:0 with HTTP; Tue, 24 Jan 2023 08:20:32
 -0800 (PST)
From: Deborah Jennings <wangaistephen84@gmail.com>
Date: Tue, 24 Jan 2023 08:20:32 -0800
Message-ID: <CAP4WyqzQd+0V17b1Ow-=GytJVMD6dB76mwaLjx7zxwDnbkqtNg@mail.gmail.com>
Subject: Re
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=8K14qJ6Ro1/mQzioNMElj5XNtfSKCBkWNmckn1KoVf0=;
 b=j/mjoL3I7HwsZ6mnRC825Iiqsr9eZBTXmA83FoxEW6G8qHVSq3CGBsviuWtgtxVVaD
 3mbhjHfXX4gIpxfSxb1e/vsBpXkTLRJ1GNOwJB9OB7HAc5QbRcHwpdzYXUAz8t/jzwCW
 UrU5alqzwSk1cNVBoHqa8pk2XLJGM11ypT2TfiZ/RICsJhlnoRmkfAlSeLgq6LeIH5RL
 6yhRgkV5wE4zB5NxZ5cQSduffn2tCoxjpsQymHPM42uKQEv2AUnzsqRzVDNtTZi54GEF
 lvF+2o8dWUnBPYycnZQ9K5WltdmOkPzMPU30YwvcV3uQCYs5csppgR3jfrHYZhoICDtH
 1Q1Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=j/mjoL3I
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
Reply-To: deborahjennings201@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
I'm Jeff Bezos,

The CEO of Amazon, it's on this note that I'm informing the world of
my intention to give out my Fortune of $124 Billion of my wealth to
the lucky ones around the country and world at large.

Your email was randomly selected to be a part of the people who will
be beneficiaries of this charity project. each person would be awarded
$520,000,00.

(https://www.cnbc.com/amp/2022/11/14/jeff-bezos-says-he-plans-to-give-away-most-of-his-124-billion-fortune.html)


Contact the Agent on how to proceed.
Email: deborahjennings201@gmail.com

My Best Regards..
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
