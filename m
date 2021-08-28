Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5423FA73C
	for <lists+driverdev-devel@lfdr.de>; Sat, 28 Aug 2021 20:49:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 271DB42739;
	Sat, 28 Aug 2021 18:49:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hTGKAKPAxBTl; Sat, 28 Aug 2021 18:49:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 793E740443;
	Sat, 28 Aug 2021 18:49:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E45341BF313
 for <devel@linuxdriverproject.org>; Sat, 28 Aug 2021 18:49:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D270582A2E
 for <devel@linuxdriverproject.org>; Sat, 28 Aug 2021 18:49:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2aUSYGRlRPuL for <devel@linuxdriverproject.org>;
 Sat, 28 Aug 2021 18:49:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com
 [IPv6:2a00:1450:4864:20::12a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2A7BE80D66
 for <devel@driverdev.osuosl.org>; Sat, 28 Aug 2021 18:49:34 +0000 (UTC)
Received: by mail-lf1-x12a.google.com with SMTP id b4so21706390lfo.13
 for <devel@driverdev.osuosl.org>; Sat, 28 Aug 2021 11:49:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
 b=h0rC4E3eFAssZyenmgepnwP9EKZAhinMJXxfmnOgSEoKODfgUdU+yRbPZK61Rr+udv
 t2psYZIkPZQjVZjMT6v92QDLA/pubdEhaKUd8wtzggWbkXkQeeXjvEMixpCSZ7rWhTxW
 rggS7SqeViKas2D9ud9CrEnkmIaHU52iyCf1uwhhIWWTQu14hfzPbnEuD8pe11f8IKVy
 fY4RXaHEjNunJg16ilERSi6qcPYVHVjC/ChxwI/hgQMCd5OamPDWHo83LlRpF74hBOTI
 jhZ1d9jDVFXk/ZfCWCe4aoFsl5PYz7VnaeEvPXTIwP6T2fBwYgM+bcKZE/kepabh3ouN
 MwqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
 b=O0VIc3HM/D4OlA9bAAQ9gtJDQy5lfTp6XVOvsHqZ73ay4P022rgW7CkjPlB4zlmuS9
 DEnHHw3jWziHTJRScMRIuJ18R+MN1iW44i0Lp0BcIVuh1yjMhbxl9kwtV3nua6o6epB0
 vIjKXYoxXbZRkWwnL0pBO+BkNlA700PAOQ+BogWRO7Y0zwdrW+IUZ2gGi3gTNeg2B13n
 0p8hAywXzv/oSKmEFhTcpM1sBwPTKa7yEMvxpMHsLmOUhxDXX3Api8eRZYGMB9gtfLzb
 TjQhSN3O/7f6xaj1OkiADV3mIsK1ebc9Cfz7GLYS8X8c6cgPcGAoK0fUodCTn4lxHvgR
 YLMg==
X-Gm-Message-State: AOAM5320QlLwZOfNMAtz5C3l0Psz4V/ohgWY2qcHIxNqKmb1B+lENDDq
 YT1Y4l5ZawLru6k9FHQQYa0=
X-Google-Smtp-Source: ABdhPJzNS8tpiA5imkCzxE+TouAsjNGXvwUFRBAQEoqEBUHxDMTj3wywpauX2E8/Ylu7blzhdb+HmA==
X-Received: by 2002:a05:6512:3694:: with SMTP id
 d20mr10760849lfs.556.1630176571944; 
 Sat, 28 Aug 2021 11:49:31 -0700 (PDT)
Received: from [192.168.1.218] (78-63-10-115.static.zebra.lt. [78.63.10.115])
 by smtp.gmail.com with ESMTPSA id
 6sm1142442lje.22.2021.08.28.11.49.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 28 Aug 2021 11:49:31 -0700 (PDT)
To: aldas60@gmail.com
References: <20210827163203.4100-1-aldas60@gmail.com>
Subject: Re: [PATCH] staging: vt6656: Remove filenames in files
From: =?UTF-8?B?QWxkYXMgVGFyYcWha2V2acSNaXVz?= <aldas60@gmail.com>
Message-ID: <7bc3eacd-6c0f-2b66-226f-ae1747c0f07f@gmail.com>
Date: Sat, 28 Aug 2021 21:49:29 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210827163203.4100-1-aldas60@gmail.com>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 forest@alittletooquiet.net, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
