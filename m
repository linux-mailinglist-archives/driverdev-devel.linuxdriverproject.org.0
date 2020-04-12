Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A6E1A5EC0
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 Apr 2020 15:29:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B24DC20478;
	Sun, 12 Apr 2020 13:29:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cW+VF-9gO2P3; Sun, 12 Apr 2020 13:29:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 56B0E2042C;
	Sun, 12 Apr 2020 13:29:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A22331BF2B0
 for <devel@linuxdriverproject.org>; Sun, 12 Apr 2020 13:29:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9B5BC2042C
 for <devel@linuxdriverproject.org>; Sun, 12 Apr 2020 13:29:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VCor49AFG+d6 for <devel@linuxdriverproject.org>;
 Sun, 12 Apr 2020 13:29:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from forward104o.mail.yandex.net (forward104o.mail.yandex.net
 [37.140.190.179])
 by silver.osuosl.org (Postfix) with ESMTPS id 2ABFE2000D
 for <devel@driverdev.osuosl.org>; Sun, 12 Apr 2020 13:29:37 +0000 (UTC)
Received: from forward102q.mail.yandex.net (forward102q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:1ba:0:640:516:4e7d])
 by forward104o.mail.yandex.net (Yandex) with ESMTP id 05B57940544;
 Sun, 12 Apr 2020 16:29:33 +0300 (MSK)
Received: from mxback5q.mail.yandex.net (mxback5q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:1ba:0:640:b716:ad89])
 by forward102q.mail.yandex.net (Yandex) with ESMTP id 00A8E7F20013;
 Sun, 12 Apr 2020 16:29:33 +0300 (MSK)
Received: from vla1-61ce7aa04735.qloud-c.yandex.net
 (vla1-61ce7aa04735.qloud-c.yandex.net [2a02:6b8:c0d:3e86:0:640:61ce:7aa0])
 by mxback5q.mail.yandex.net (mxback/Yandex) with ESMTP id fn6LxomBys-TWlmAoTw; 
 Sun, 12 Apr 2020 16:29:32 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1586698172; bh=20Xym1g+2xCGcmJuCNInJKvW+oOdMSKnpImJLyKpihA=;
 h=In-Reply-To:From:Subject:Date:References:To:Message-ID;
 b=qPWBD9isSUDiBc3MbyJ7Ck6D+eeRBuBxlRzKowgfjkouZwjd7402O6xPeWFuYGSRf
 WSWdf4g+OoAX9ozjgDWkJV5HB8EE8PGzSWlcttBrR7xS9qf34IeZ4Hm911iXoTdeio
 6u+sM4rwoJD39xd+ge0ZGJCAAIbdc87/jX/bt2LU=
Authentication-Results: mxback5q.mail.yandex.net; dkim=pass header.i=@yandex.ru
Received: by vla1-61ce7aa04735.qloud-c.yandex.net (smtp/Yandex) with ESMTPSA
 id uGxk6FJkg5-TVXS9kgN; Sun, 12 Apr 2020 16:29:31 +0300
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (Client certificate not present)
To: Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Straube <straube.linux@gmail.com>, devel@driverdev.osuosl.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20190712071746.2474-5-nishkadg.linux@gmail.com>
Subject: Re: [PATCH 5/8] staging: rtl8188eu: Remove function rtw_modular64()
From: Ivan Safonov <isaf21@yandex.ru>
Message-ID: <66fb1e37-107e-54f4-4986-ca4e4bb99d2d@yandex.ru>
Date: Sun, 12 Apr 2020 16:34:08 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20190712071746.2474-5-nishkadg.linux@gmail.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> Remove function rtw_modular64 as all it does is call do_div.

This is wrong. Macro do_div(x, y) change first argument x, but 
rtw_modular64(x, y) preserve it.

> +			tsf = pmlmeext->TSFValue - do_div(pmlmeext->TSFValue, (pmlmeinfo->bcn_interval*1024)) - 1024; /* us */

rounddown(pmlmeext->TSFValue, pmlmeinfo->bcn_interval * 1024) - 1024
is a better replacement for

> -			tsf = pmlmeext->TSFValue - rtw_modular64(pmlmeext->TSFValue, (pmlmeinfo->bcn_interval*1024)) - 1024; /* us */

Patch '[PATCH 01/10] staging: rtl8723bs: Remove function 
rtw_modular64()' have same bug.

Ivan Safonov.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
