Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A984DA6CE
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Oct 2019 09:53:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 49FCD86CDB;
	Thu, 17 Oct 2019 07:53:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3qrCEynsKRce; Thu, 17 Oct 2019 07:53:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8EDA386C93;
	Thu, 17 Oct 2019 07:53:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B6B491BF2FD
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 07:53:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9ADA286CB3
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 07:53:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sCeGn2BufZTe for <devel@linuxdriverproject.org>;
 Thu, 17 Oct 2019 07:53:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D5B1186C93
 for <devel@driverdev.osuosl.org>; Thu, 17 Oct 2019 07:53:16 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id j18so1125440wrq.10
 for <devel@driverdev.osuosl.org>; Thu, 17 Oct 2019 00:53:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=WmdAjijAJ1mGcWe1ZcT62QIO9S6tWqydNbncWS1uCf8=;
 b=fv2JBe6gEpqcjAhpqxIhM/r5H5cKzRW/3x8+EWmbWgFARRM4zYG0RSIxks09MEjjMg
 Y9vO6HDfZYXUUzi5bS5J4Vn7R2GxKZKFFlX6xN/PyIU2p+OY9zOH1J71JglnIT8szL5T
 auzK1ruhn6aWoVs0yOkpOePm6iPkFMJ3KnZL5BIFlueSSkKca+hC3mr0wgj3c2R+Nz8v
 oqGgmyek2JE2rZX8qVkuX8V/LWme6hOADuSlFN6+27H9Oip0HbWt0iUmIFCgFXGfEnsZ
 lYOtToI3dLo3X5poDykpAFq0SObi/0Ty23QofOrQBYJ7A8pL2L4n6S3rIBm9CagLy77u
 crpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=WmdAjijAJ1mGcWe1ZcT62QIO9S6tWqydNbncWS1uCf8=;
 b=s4EH7LRv/J9lE9Pya+Me86g8U9VM7MCJc6QeQ+Yaf10ww6DVKsntnWducBuBhxLYDW
 VGdc9vnXXJFAcE9OHadfPjMDb/dz/JZm27Myjqac2u4tR//7MsgTT2VN3uraa0B282ZQ
 mdaN9lHP5ZOBx3KJtR/rzcZvgK+hJDAfqdG5T9HEXyBKcckaNkP7M/WkRzPvjKFvLlI2
 ePP8XX/pEIb+l8+ZZKOozH+Qy9ruXqJRireS6rnUWEPjw/I/IGrcZRYrgh20r3pOGXtH
 Fhjafh9ocPrtueYSrrSBaCnxSoUn2zWL30fkjRUD0HjRe7gagCA+jZC/JnnJpX+fqEJQ
 IPWA==
X-Gm-Message-State: APjAAAXaEBi6OJJ9zyphA/8Rd5V7PAca5iokT287t2bcgQ/oIzFBsx0y
 0oVEP7YdOD6tpBm7gs/2XKw=
X-Google-Smtp-Source: APXvYqzTcvcm8WbGzmcu4hbIsYWFxP+P9ICfyRC1hJQjmxFumwxQCPn3KSTizxcFDNal3frZ7VNKEg==
X-Received: by 2002:a5d:46c6:: with SMTP id g6mr1666233wrs.331.1571298795401; 
 Thu, 17 Oct 2019 00:53:15 -0700 (PDT)
Received: from pali ([2a02:2b88:2:1::5cc6:2f])
 by smtp.gmail.com with ESMTPSA id b130sm1976566wmh.12.2019.10.17.00.53.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 17 Oct 2019 00:53:14 -0700 (PDT)
Date: Thu, 17 Oct 2019 09:53:13 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
To: Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20191017075313.6bxsn2d5ceuazowc@pali>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190829205631.uhz6jdboneej3j3c@pali>
 <184209.1567120696@turing-police> <20190829233506.GT5281@sasha-vm>
 <20190830075647.wvhrx4asnkrfkkwk@pali>
 <20191016140353.4hrncxa5wkx47oau@pali>
 <20191016143113.GS31224@sasha-vm>
 <20191016160349.pwghlg566hh2o7id@pali>
 <20191016203317.GU31224@sasha-vm> <207853.1571262823@turing-police>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <207853.1571262823@turing-police>
User-Agent: NeoMutt/20170113 (1.7.2)
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Christoph Hellwig <hch@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sasha Levin <alexander.levin@microsoft.com>, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkbmVzZGF5IDE2IE9jdG9iZXIgMjAxOSAxNzo1Mzo0MyBWYWxkaXMgS2zEk3RuaWVrcyB3
cm90ZToKPiBhbmQgbWF5IGNhdXNlIHByb2JsZW1zIGlmIExpbnV4IHNheXMgImN1cnJlbnRseSB1
c2luZyBGQVQgMiIsIGFuZCB0aGUKPiBkaXNrIGlzIG5leHQgdXNlZCBvbiBhIFdpbmRvd3MgMTAg
Ym94IHRoYXQgb25seSBsb29rcyBhdCBGQVQgMS4uLi4KCllvdSBzaG91bGQgdXNlIHNhbWUgYWxn
b3JpdGhtIHdoaWNoIGlzIHVzZWQgZm9yIEZBVDMyLiBQcmltYXJ5IEZBVCBpcwpmaXJzdC4gQW5k
IGFsbCBvcGVyYXRpb25zIGFyZSBkb25lIG9uIFNlY29uZGFyeSBGQVQgYW5kIHRoZW4gaXMKU2Vj
b25kYXJ5IEZBVCBjb3BpZWQgdG8gUHJpbWFyeS4gVGhpcyBpcyBiYWNrd2FyZCBjb21wYXRpYmxl
IHdpdGgKc3lzdGVtcyB3aGljaCBvcGVyYXRlcyBvbmx5IHdpdGggZmlyc3QgcHJpbWFyeSBGQVQu
IEFuZCBvdGhlciBzeXN0ZW1zCndoaWNoIHNlZSBib3RoIEZBVHMgY2FuIGJlbmVmaXQgZnJvbSBy
ZWR1bmRhbmN5L3JlY292ZXJ5LgoKLS0gClBhbGkgUm9ow6FyCnBhbGkucm9oYXJAZ21haWwuY29t
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
