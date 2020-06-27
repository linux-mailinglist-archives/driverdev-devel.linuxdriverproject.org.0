Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD6B20C0AE
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 12:21:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2B0988874E;
	Sat, 27 Jun 2020 10:21:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6U+aPRkLaQbd; Sat, 27 Jun 2020 10:21:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9782C8860A;
	Sat, 27 Jun 2020 10:21:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 433B71BF405
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 10:21:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3F8838813D
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 10:21:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3-Pyb6l++2eq for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 10:21:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9663488086
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 10:21:37 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id 67so1696858pfg.5
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 03:21:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=tW07XZiC9CEEWw6VcmU9nAkZCHxzclaGfw7X0IosT68=;
 b=hS263lqByHbO7EYkzC8PMkEf1Zra+GukflOKzTVKlMAAmYsEImhAl6R5zhjVE4uJ54
 59OgbvfmjJDVYGXAI2kbEczUHHuDoqJBso3wk1aw3DubX9tqf6sJFRL080s1+QHSz3+3
 d5W/dZatNIQe2XxF74qw4mOLqUiQkxpEzSrfq4hH4EGSDZbFrCXVSK3hQnt2LB74B54U
 ZDIQM0v9LNkGOJXveWjbw9EohiRV2jgIRk14IJxT1sX7l58v88p57bb+RH1WHGwYSTIF
 /mVmNOk/DNfwFtsYqp0b9KXyRfHi4hXAAQlLH8kNlFkIT9jNAVYEM89e5X2aVZZzCFxo
 1QsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=tW07XZiC9CEEWw6VcmU9nAkZCHxzclaGfw7X0IosT68=;
 b=RXJ9CyOElZfEoZnZ0KQ52mxhWsMMYSatHJ1aZdRJGQPRgHzoi1LxFn6BGwQhqwaM9j
 p8uwj1p7gRMtnBYRG7+1XsnsRespIxa7eJE/Z2Nz5RJCuutDrIUkIcoVrUoVaizNom6g
 Vr0DEVI5GtFdVTpV65G87IPEOY5ILd5zxkI+VO4pryySA6MA04DLb4CYiqeVYcCJXPRU
 9e4tcEmGmirqvKR0lLEThstVCb1N/VEemyWjVpn67+KZgR1X98LB0riwJzhbnPITXrcp
 Nf6eEpXbHqdZGusWGnxkp/ExjYm81giP2BilHmmbkseT+UsgRL+fWTYp59hgtSnwOdQ1
 6pew==
X-Gm-Message-State: AOAM533SpO3l4xth/Tahp2Kd7+9942AHqpALNI84HygF7WJ2ArB1Gdfr
 SLbZ11aOS8+DmfU/yShwW2ScNXl+22Q=
X-Google-Smtp-Source: ABdhPJxb8SajYw85oD0ETALA1g8P+Gea5rsMXujMPh4tPVcPh6hXLpGiqDCBPV9pJr2CvaTX46hY5A==
X-Received: by 2002:a63:e114:: with SMTP id z20mr2415276pgh.300.1593253297259; 
 Sat, 27 Jun 2020 03:21:37 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id l126sm1064898pfd.202.2020.06.27.03.21.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Jun 2020 03:21:36 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Sat, 27 Jun 2020 18:21:29 +0800
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH 2/2] staging: qlge: fix else after return or break
Message-ID: <20200627102129.iizp5rnj27viyfti@Rk>
References: <20200625215755.70329-1-coiby.xu@gmail.com>
 <20200625215755.70329-3-coiby.xu@gmail.com>
 <049f51497b84e55e61aca989025b64493287cbab.camel@perches.com>
 <20200626235725.2rcpisito2253jhm@Rk>
 <324448187976fc690ea63f1c18e063fb0b09f740.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <324448187976fc690ea63f1c18e063fb0b09f740.camel@perches.com>
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
Cc: devel@driverdev.osuosl.org, "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER"
 <GR-Linux-NIC-Dev@marvell.com>, Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jun 26, 2020 at 05:06:33PM -0700, Joe Perches wrote:
>On Sat, 2020-06-27 at 07:57 +0800, Coiby Xu wrote:
>> On Thu, Jun 25, 2020 at 03:13:14PM -0700, Joe Perches wrote:
>> > On Fri, 2020-06-26 at 05:57 +0800, Coiby Xu wrote:
>> > > Remove unnecessary elses after return or break.
>> >
>> > unrelated trivia:
>[]
>> > looks like all of these could use netdev_err
>[]
>> should we also replace all pr_errs with netdev_err in
>> ql_dump_* functions?
>
>Ideally, anywhere a struct netdevice * is available, it should
>be used to output netdev_<level> in preference to pr_<level>.

Thank you for the explaining!

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
