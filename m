Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E858E22D785
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jul 2020 14:31:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D007787FAF;
	Sat, 25 Jul 2020 12:31:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9krduAUYrknY; Sat, 25 Jul 2020 12:31:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A56B187A0D;
	Sat, 25 Jul 2020 12:31:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8A5D71BF36C
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 12:31:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8607E86FF1
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 12:31:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bcc1pfEC-xhL for <devel@linuxdriverproject.org>;
 Sat, 25 Jul 2020 12:31:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1182886FE7
 for <devel@driverdev.osuosl.org>; Sat, 25 Jul 2020 12:31:25 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id n5so6864785pgf.7
 for <devel@driverdev.osuosl.org>; Sat, 25 Jul 2020 05:31:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=j29KhIrGJix5VQbo0z0xBiUNmdSYwoD3UiYGLNHhpGc=;
 b=nIWBYsW2uExLVeaoRdB8y3ebtVstNAtY8Nam+Y7dRnEvpErQ4xghiMqVLz6u3k3AW3
 CIP5EA6m8Z0uWSmkeJvNcn85erR8BPHDtvLjC07e9YTu3WLiiIhd65oqXuRJRi8W3zQj
 zY6OsT9E817O1CsFrbKbbnZh+LbPPqDWHKUhqQHLt8wOXigxzuKuupKSFtOM/e+s0he4
 AXWtH686ILo3Db9tJTx1hCc4m4DOQQRWZoEuh0VMrKge2mIgZ6oIpuHq4x1ZPfD974cD
 kcS8+7Z6m1lDhBI8E23ksnJ1aLhG/oUdwI3PoURGUlXWzAez1kqbujwZLosjwoYOKS+z
 nm9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=j29KhIrGJix5VQbo0z0xBiUNmdSYwoD3UiYGLNHhpGc=;
 b=Srqh2MGtGAV7FR6C9paQAWWZViVhg3YOuCYHznwT+RPWwReqmMMpNRqwtf2rO6AD1D
 W3NuKEkFPMCgpjRRvCVRbqwm2FIuKRbxl/95POw+PMXMQ8kfndLVoQsCRvEQ4EdCw/Ib
 bupZ6lG1UQ9czlj2e9PD+rNKxedr6cOhbrF/yP4W5FYzF2EbRmk7OteRwA2eYtIcMpxm
 L3kbiPez6H/NiNgaT8J2Hp8RFkLCChcP+oiu8M8TzLJGcaTsoe+H+nJxVZxZRhA4jdHd
 yMKmVyTsIHM6p0HuM14jl2CsAhGISkmOmmy7mbpdEW26e676H70OpUjnFfBsyREHUTLo
 vymw==
X-Gm-Message-State: AOAM5321VSVojmvzuIZaVq7R/c1IuRSOpOLuWyQ5Y/pNeLljKSFmvcDi
 +Uv7BUTSqBDly78Vp2VW5AY=
X-Google-Smtp-Source: ABdhPJzAkLREc+JJG24EqqpOgxwnarQaUqRjHaB6TKl782hbqkb9+zeV0TlMXC/vzbTH6PTr3aOAtQ==
X-Received: by 2002:a65:400a:: with SMTP id f10mr12004851pgp.197.1595680284652; 
 Sat, 25 Jul 2020 05:31:24 -0700 (PDT)
Received: from [192.168.0.109] ([1.186.115.27])
 by smtp.gmail.com with ESMTPSA id q24sm9495169pfg.95.2020.07.25.05.31.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 25 Jul 2020 05:31:23 -0700 (PDT)
Subject: Re: [PATCH v4] staging: nvec: change usage of slave to secondary
To: =?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>
References: <20200724043633.7755-1-bharadwaj.rohit8@gmail.com>
 <20200725062938.15388-1-bharadwaj.rohit8@gmail.com>
 <20200725120146.GB26689@qmqm.qmqm.pl>
From: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
Message-ID: <5597e949-b93c-9133-efdb-9714637f9ebc@gmail.com>
Date: Sat, 25 Jul 2020 18:01:19 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200725120146.GB26689@qmqm.qmqm.pl>
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
 Dan Carpenter <dan.carpenter@oracle.com>, p.zabel@pengutronix.de,
 linux-tegra@vger.kernel.org, ac100@lists.launchpad.net
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 25/07/20 5:31 pm, Micha=B3 Miros=B3aw wrote:
> On Sat, Jul 25, 2020 at 11:59:39AM +0530, Rohit K Bharadwaj wrote:
>> changed usage of slave (which is deprecated) to secondary without breaki=
ng the driver
> =

> The relevant I2C and SMBus standards use master/slave terminology. Why are
> you changing the names to something unfamiliar?
> =

> If the reason are the recent coding-style changes, then please note they
> are about avoiding introducing *NEW* uses of the specific words and not
> about blindly replacing existing occurrences.
> =

> Best Regards
> Micha=B3=A0Miros=B3aw
> =


I'm really sorry sir, I didn't knew about this, yes the reason for my chang=
e is according to the script checkpatch.pl to suit the coding style, I woul=
d try to fix some other coding style related issues if this patch seems to =
be a bad idea.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
