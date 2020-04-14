Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A01E1A7A8A
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Apr 2020 14:19:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4AC7887935;
	Tue, 14 Apr 2020 12:19:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Uws0rJIKqKoQ; Tue, 14 Apr 2020 12:19:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4172C87397;
	Tue, 14 Apr 2020 12:19:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6874D1BF5A4
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 12:19:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 60055203A9
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 12:19:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B0iPhvoFMdVu for <devel@linuxdriverproject.org>;
 Tue, 14 Apr 2020 12:19:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 342E72033B
 for <devel@driverdev.osuosl.org>; Tue, 14 Apr 2020 12:19:01 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id q22so12241817ljg.0
 for <devel@driverdev.osuosl.org>; Tue, 14 Apr 2020 05:19:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=V2uhKGH1niG1NZ7O2reXhRZkgbh6RqYNoAWaTPDRwBc=;
 b=OiHAQB5F+9MwiQLWbGcwkrQZ+osTSBwOsMy5kcZtWYnR8k4okAp2XelXhano8lZPN8
 cTgJOzPaPkoedcEvWsPG8cUVy6bI6l+Ko4XsThFW7ZK98rWYn/FklZgdXjhHchDgZt1D
 XjfdLPT3NpV9MpKflOoTutBnaP0uW9SxRzWNoFjANUJzO1XoKeQa5C4rkZ0kH4MCrbmh
 VjZKURhgVMqgpALpuf6u+sPip5a62otDAQ00BsuDlPSReYgZPKY9LY2WdgOQ/GxZ+AFn
 RghZSY82owdeScpFYe++gpFet5hJNmIK/WYU81+cxy0a8PijDYkuButVbIdPSvRI5xql
 vtFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=V2uhKGH1niG1NZ7O2reXhRZkgbh6RqYNoAWaTPDRwBc=;
 b=VTPD5mxbsFEwxCLZfQGySHwoDsvbTBeWaDzNlf+6bIEmWV5TjogNFdbCsHxp4Bp1mT
 6v5c09Gnq2NujPNYeGySNWn7QsAxG1VaRzPma0YYXxadIh02k/auh8/Njj8sccQ7aXFF
 pRAiW+IJI4OwbP6dbB8O93T8tBH9g+bqoXDq0I1x4rUFChDF/bM2KHt97GbdnnOxqWuV
 QYpkbnwJrRIDd00FuRRiIBa3dbDBtD6cTrY5XVquWWUV5TD/qi58wzfpVegSQBai9msm
 RmAog52A+iOIJG0/vtz8Icd2IpRxjeH/UECHuBAY4iiM9DkLAifhxwP+4sKzCM4Yfvgv
 R2gQ==
X-Gm-Message-State: AGi0PuY9J/ryrEsmKbzX1qS5t40faf7OpyFfwExpqLmsyAez5W3nH2MI
 DkpflUoBHOXUqObqTo9A1ho=
X-Google-Smtp-Source: APiQypI3Nkfx8h6Wo157c8g5j+hbkgjomDF7OWCyYPa7rvJI4EQxOHRF0nZqN8Psc+SKKr2KzD+ohA==
X-Received: by 2002:a2e:8996:: with SMTP id c22mr9952749lji.155.1586866739156; 
 Tue, 14 Apr 2020 05:18:59 -0700 (PDT)
Received: from [192.168.0.160] (84.188.smarthome.spb.ru. [80.249.188.84])
 by smtp.gmail.com with ESMTPSA id c22sm8980495ljh.66.2020.04.14.05.18.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Apr 2020 05:18:58 -0700 (PDT)
Subject: Re: [PATCH 5/8] staging: rtl8188eu: Remove function rtw_modular64()
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20190712071746.2474-5-nishkadg.linux@gmail.com>
 <66fb1e37-107e-54f4-4986-ca4e4bb99d2d@yandex.ru>
 <20200414115604.GF1163@kadam>
From: Ivan Safonov <insafonov@gmail.com>
Message-ID: <20becb6f-7bf6-8618-9525-b64c226088c7@gmail.com>
Date: Tue, 14 Apr 2020 15:22:59 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200414115604.GF1163@kadam>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 4/14/20 2:56 PM, Dan Carpenter wrote:
> On Sun, Apr 12, 2020 at 04:34:08PM +0300, Ivan Safonov wrote:
>>> Remove function rtw_modular64 as all it does is call do_div.
>>
>> This is wrong. Macro do_div(x, y) change first argument x, but
>> rtw_modular64(x, y) preserve it.
>>
>>> +			tsf = pmlmeext->TSFValue - do_div(pmlmeext->TSFValue, (pmlmeinfo->bcn_interval*1024)) - 1024; /* us */
>>
>> rounddown(pmlmeext->TSFValue, pmlmeinfo->bcn_interval * 1024) - 1024
>> is a better replacement for
> 
> You're absolutely correct that the patch is buggy, but I'm not sure that
> rounddown() is what we want.
> 
> rtw_modular64() took the MOD of x.  So it should be something like:
> 
> 	tsf = pmlmeext->TSFValue - (pmlmeext->TSFValue % (pmlmeinfo->bcn_interval * 1024)) - 1024; /* us */
> 
> But what the heck is that even???  If pmlmeinfo->bcn_interval is zero
> or one then the subtraction ends up giving us a negative.
> 
> regards,
> dan carpenter
> 

1. pmlmeext->TSFValue can not be negative, because it is uint64_t;
2. pmlmeext->TSFValue is cyclic value:
     https://en.wikipedia.org/wiki/Timing_synchronization_function ;
3. (rounddown(a, b)) is equal to (a - a % b) by definition.

Ivan Safonov.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
