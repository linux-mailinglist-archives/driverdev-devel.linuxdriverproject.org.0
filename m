Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D47E82BFF1B
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Nov 2020 05:46:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E997F20452;
	Mon, 23 Nov 2020 04:46:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dU3E89KU1HAB; Mon, 23 Nov 2020 04:46:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DB71220111;
	Mon, 23 Nov 2020 04:46:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 32A9D1BF3D4
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 04:46:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2796A857BF
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 04:46:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HFbZCBwGqKR6 for <devel@linuxdriverproject.org>;
 Mon, 23 Nov 2020 04:46:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D408A857B0
 for <devel@driverdev.osuosl.org>; Mon, 23 Nov 2020 04:46:48 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id e139so21984062lfd.1
 for <devel@driverdev.osuosl.org>; Sun, 22 Nov 2020 20:46:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A2batJNX3Sb2NAphta4ZUVPmR4QZ93tWrIH5Q2h8chA=;
 b=tsFjOWpE3sDYJJ1b3PS3sMJ/ra8+fBcdezRBbxhoyo2GPTJnf4yi3cgWMqLtGkt5dx
 c5kqAXn7ZqBAi41w8NELv0vYQTDwuEGpCUECSvsPE+JhV1UtWWGN/eGD5zp2tBfkqd45
 X6s7hWPQYD4qAx8zIjvfO59G7iYgf5nxDzFpAEHyR52tDqASvMaL1X8Ka5JNqZHGGd9P
 lY+Dv0AeLleoBsYes7l0kzfKliHf/ZkrZqImrYOMW2nun1j5L7ltovFE1ysmyv/eLVqG
 DyHsUrFICe9GeJfLlmuldJm8BvB3nWPsPvjHX+Fiea67ETrC44lUJvMYvhwcuZfMXaL0
 wVwA==
X-Gm-Message-State: AOAM530x6fB27VjpvQxtc9Gd1V78U9VGgCAgHak3U7+5BcID2LLgWfz0
 e2HjoRTKPQbK9I/rdCb8jB26k/9804vfhA==
X-Google-Smtp-Source: ABdhPJwblU6xo45OwA5D3jMJbKfM5WWfCZi2xbMkE1zETWOuGffZbLy1gkY9Ijh6L2F3qe1KPenNSg==
X-Received: by 2002:a19:42d2:: with SMTP id p201mr2425281lfa.273.1606106806558; 
 Sun, 22 Nov 2020 20:46:46 -0800 (PST)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com.
 [209.85.167.44])
 by smtp.gmail.com with ESMTPSA id w6sm1246987lfn.64.2020.11.22.20.46.45
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 22 Nov 2020 20:46:46 -0800 (PST)
Received: by mail-lf1-f44.google.com with SMTP id a9so21959196lfh.2
 for <devel@driverdev.osuosl.org>; Sun, 22 Nov 2020 20:46:45 -0800 (PST)
X-Received: by 2002:a19:c509:: with SMTP id w9mr3050799lfe.193.1606106805789; 
 Sun, 22 Nov 2020 20:46:45 -0800 (PST)
MIME-Version: 1.0
References: <20201116125617.7597-1-m.cerveny@computer.org>
 <20201116125617.7597-6-m.cerveny@computer.org>
In-Reply-To: <20201116125617.7597-6-m.cerveny@computer.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 23 Nov 2020 12:46:34 +0800
X-Gmail-Original-Message-ID: <CAGb2v67_VqkLqXKADnj5=EuYBNSB8awK_2V3HeHJBOdnUywNhA@mail.gmail.com>
Message-ID: <CAGb2v67_VqkLqXKADnj5=EuYBNSB8awK_2V3HeHJBOdnUywNhA@mail.gmail.com>
Subject: Re: [PATCH v3 5/6] dt-bindings: media: cedrus: Add V3s compatible
To: Martin Cerveny <m.cerveny@computer.org>
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
Cc: devel@driverdev.osuosl.org, devicetree <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Icenowy Zheng <icenowy@aosc.io>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Nov 16, 2020 at 8:58 PM Martin Cerveny <m.cerveny@computer.org> wrote:
>
> Allwinner V3s SoC contains video engine. Add compatible for it.
>
> Signed-off-by: Martin Cerveny <m.cerveny@computer.org>

Acked-by: Chen-Yu Tsai <wens@csie.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
