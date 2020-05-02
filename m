Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9826F1C24B0
	for <lists+driverdev-devel@lfdr.de>; Sat,  2 May 2020 13:21:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 075BD86F50;
	Sat,  2 May 2020 11:21:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K24N-pXErU3s; Sat,  2 May 2020 11:21:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F3D2086E97;
	Sat,  2 May 2020 11:21:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 64BE81BF859
 for <devel@linuxdriverproject.org>; Sat,  2 May 2020 11:21:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 61A0188846
 for <devel@linuxdriverproject.org>; Sat,  2 May 2020 11:21:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9YVw9nBuM0RK for <devel@linuxdriverproject.org>;
 Sat,  2 May 2020 11:21:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AE3D188844
 for <devel@driverdev.osuosl.org>; Sat,  2 May 2020 11:21:46 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id 188so2819587wmc.2
 for <devel@driverdev.osuosl.org>; Sat, 02 May 2020 04:21:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=sJijT4a1j9nQvyWg75je7ZT6OCbMpgJ+rujJ98q3RnQ=;
 b=BOcpjQBkHnP1PlW8xPC/wdiykrjWFuE8hLh3MtOcRba0RLejNkTqQeJdAFx25MGmZa
 Ql43zdR+ngo/brPlqZFoeYN9uYRA38RNKuTmn751g3QOSo3FG5t8MseCloz2baIlnbBS
 JcdqFUGjERaHx+OMtJKotHunNy0XuS5TTbWQjFKCoR81Sn5AH5ZPndj9rWcvvjpD220M
 6FT6+WLvHtSFH4h3a5NvBzCRDsoluQr8Ak4IvEeIpyXyl+djOhngV52YhNvOqqz+4gq9
 feD9ze1xBnY0PgDpk/C/vo1CB5G5lJW7uvZ4saMqQEjH4zrfIOf3NVAfyR82GbET4702
 9h7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sJijT4a1j9nQvyWg75je7ZT6OCbMpgJ+rujJ98q3RnQ=;
 b=L1suILuKrIzHQiT5M5dht2Bhmrr0VWoMMYuznmb90fQfdPqFUhrFnYRwN5Rrv3/1k6
 uGvxacS8FXWMdw8uOMEDA/18DWWS6iv8nOTCrnEXwS1QGz+9P6DGBAhVm5TLnO83KHhp
 70Jy1oKxLa0pbFBhDl5HXFmg5HXBuNDg9dy91sjLAnK1pkC+Hs4659i3YAZ0XpaVn+Ze
 m7zh9n1OOHPD4qANjXutEmsX/a9xDFX2TUXbThMJUn5FWJwQVOCweWWgosoj6Hg1g5kC
 +UlRVdRf/6S7BvDlnm/ppw8mdZsZH7fdYE/rmh5tx1eBcTti0jgOjw8Mf26Yp3G77zz7
 nXeg==
X-Gm-Message-State: AGi0PuaVw+0RtcZcTrF8wAkReRrWhpbMKMVJhvGZpP6IfoDXnaw5t0wA
 LyUWtHscn35IlYGENSp5WZY=
X-Google-Smtp-Source: APiQypLEGt097/krdyEeil57drfCN3k7Xxf2DKsE7CMV6LGKvZxzdohRE05WiuWepAfSdkRQLHJYcw==
X-Received: by 2002:a1c:5642:: with SMTP id k63mr4181685wmb.188.1588418505003; 
 Sat, 02 May 2020 04:21:45 -0700 (PDT)
Received: from [192.168.43.18] (94.197.121.192.threembb.co.uk.
 [94.197.121.192])
 by smtp.gmail.com with ESMTPSA id h2sm3789426wmf.34.2020.05.02.04.21.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 02 May 2020 04:21:44 -0700 (PDT)
Subject: Re: [PATCH ] staging: vt6656: refactor power save operation
From: Malcolm Priestley <tvboxspy@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <5f32a399-bb35-2b77-7c37-a852393a9df7@gmail.com>
Message-ID: <26ab54ee-9f42-4c2a-e823-f1eccfe24dfb@gmail.com>
Date: Sat, 2 May 2020 12:21:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <5f32a399-bb35-2b77-7c37-a852393a9df7@gmail.com>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Oscar Carter <oscar.carter@gmx.com>, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Drop this patch v2 sent corrected TTBT.

Regards


Malcolm
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
