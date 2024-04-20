Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 235A88ABB9D
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Apr 2024 14:56:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 123684053B;
	Sat, 20 Apr 2024 12:56:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w6ZxehXnsPQz; Sat, 20 Apr 2024 12:56:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF2574067A
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF2574067A;
	Sat, 20 Apr 2024 12:56:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 192961BF2C4
 for <devel@linuxdriverproject.org>; Sat, 20 Apr 2024 12:56:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 05C7F40204
 for <devel@linuxdriverproject.org>; Sat, 20 Apr 2024 12:56:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iRsHx8PyC0z1 for <devel@linuxdriverproject.org>;
 Sat, 20 Apr 2024 12:56:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::336; helo=mail-wm1-x336.google.com;
 envelope-from=johnb4352@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 15F834011F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 15F834011F
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 15F834011F
 for <devel@driverdev.osuosl.org>; Sat, 20 Apr 2024 12:56:07 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 5b1f17b1804b1-41a096a1299so1008995e9.1
 for <devel@driverdev.osuosl.org>; Sat, 20 Apr 2024 05:56:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713617765; x=1714222565;
 h=reply-to:date:to:subject:content-description
 :content-transfer-encoding:mime-version:from:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=/rX3maIkNcsTijfoHTKWJKCQ9EBmDK7MDsfjtX/UcsM=;
 b=rKaYEYc8etaHeaDfLYrZRbfR48hMTWZeRQqqA37Hp9M/FIoGF37lg+IAhvw3CDwO65
 ESpcNyFPMjK+ZtevrYwN1JhIfz08QNh+XBtkxfQJy5kaojHEmQC9Sb3gyk5T1eHIMN1B
 wWetDeHbnnhVqXB6/54b7QhmkfwAYAOIgLg/X3nuqUZ9sI5SO40xbrv3X0PqcC47QrF+
 P7AKqXCIF+vg41ArPR4YzPdAjKLYtH0H/u5NHqBrYRrpEMEGWAs1cy5UHXdhNw4HCgy7
 sjLiHtMmleDfmb33ASx2pc7SIn5BiJ6TXgeTewvKSjwk8URUI0BQqlXlmeHLOcT/b+sE
 +PcQ==
X-Gm-Message-State: AOJu0YwIN5Fg/FLvJ3HJ/CEkKesNVl+HcdExfceovWZcdgghXhwk/32Z
 O+y4X139vcm0yr4jZnaPg5EtFz6kJqmOv5OFwH5pH6xojcCLSI/ZK0Q9fZY=
X-Google-Smtp-Source: AGHT+IFtq7OY9KmnGY/ZexbvxLONsml6zD8/whZG9TC/eqZ9CEzqLmeYZO2a51R1BSwyK6SFDDCB6w==
X-Received: by 2002:a05:600c:154b:b0:416:9b7f:7098 with SMTP id
 f11-20020a05600c154b00b004169b7f7098mr3088174wmg.24.1713617764821; 
 Sat, 20 Apr 2024 05:56:04 -0700 (PDT)
Received: from [192.168.153.102] ([129.205.113.182])
 by smtp.gmail.com with ESMTPSA id
 l37-20020a05600c1d2500b004186f979543sm13998235wms.33.2024.04.20.05.56.03
 for <devel@driverdev.osuosl.org>
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Sat, 20 Apr 2024 05:56:04 -0700 (PDT)
Message-ID: <6623bb64.050a0220.75262.b9e3@mx.google.com>
From: Halima Fatima  Shahzad <johnb4352@gmail.com>
X-Google-Original-From: Halima Fatima  Shahzad
MIME-Version: 1.0
Content-Description: Mail message body
Subject: INVESTMENT
To: devel@driverdev.osuosl.org
Date: Sat, 20 Apr 2024 05:55:57 -0700
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1713617765; x=1714222565; darn=driverdev.osuosl.org;
 h=reply-to:date:to:subject:content-description
 :content-transfer-encoding:mime-version:from:message-id:from:to:cc
 :subject:date:message-id:reply-to;
 bh=/rX3maIkNcsTijfoHTKWJKCQ9EBmDK7MDsfjtX/UcsM=;
 b=FF5FHkrbbrIMAa5rm6o0X0FOTX2Tm6NzW+uOR3QIrdMSW8CZl9IwAIH46CazcEsbo5
 VzUeej8Pi7PoMAHJTxwHq4YtiJgLu3X/uPe2yy3Ylt+eVngsN8fQ2kxvhctaLnXaxW59
 WM5L20fYTQrPqI3fInri+Mn0gEimsm1Ac9qB9C6KKHmCdHRaUglNDzilkIjJXkvJUesb
 qnW6sKNzpPfsbUHaeN/kA/M9FlRp6LCsm1KoWGf+qsfb/cl0ltvm9NaR0PjhvwYQ7DUk
 gwVG5ZhTO4BYbGdmEzyXfZHHHo3TRGQPvpdircMM2IXuenDs7wh784PwBQlJWEIdu9MP
 yFyA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=FF5FHkrb
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
Reply-To: halimashahzad41@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

My dearest one,

I am writing this mail to you because of how confidential it is, and should be deleted from your mail box if you are unable to help me out concerning my sitaution. I am Halima Shahzad the daughter of late Mahammid Shahzad from Gaza, am writing from the turkiye refugee camp and I am very sorry to contact you in this manner but I have no option left, against the tide of limited time available. I have a concealed USD $8,000,000.00 (Eight Million Dollars )moved from Gaza to a security company in turkiye by my late father a week the war started before he was killed by Israeli Air Strike,I want your asistant to move the said amount to your country for a business investment to avoid me losing it here in turkiye.
Kindly revert back to me for more details Thanks.

Kind regards
Halima Fatima Shahzad 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
