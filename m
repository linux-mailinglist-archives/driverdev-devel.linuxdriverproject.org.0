Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D68512D6E4A
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Dec 2020 04:02:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B355F860C5;
	Fri, 11 Dec 2020 03:02:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ak0jmge7R93S; Fri, 11 Dec 2020 03:02:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5B3E2860BE;
	Fri, 11 Dec 2020 03:02:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 651621BF335
 for <devel@linuxdriverproject.org>; Fri, 11 Dec 2020 03:02:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5A3DB8717B
 for <devel@linuxdriverproject.org>; Fri, 11 Dec 2020 03:02:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 71pa6yZdASYQ for <devel@linuxdriverproject.org>;
 Fri, 11 Dec 2020 03:02:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CB16187168
 for <devel@driverdev.osuosl.org>; Fri, 11 Dec 2020 03:02:35 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id d189so8260704oig.11
 for <devel@driverdev.osuosl.org>; Thu, 10 Dec 2020 19:02:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=rVA3v//5uFeyzZYgKjyJny/vDnQO/EJzRhd8D8iaejQ=;
 b=Fpm12VRjD3pumwjY0NJW/T1xK4uwYLHhp+6N0SfEuD5ME82nMjGSc1lGoDudXJAs7q
 DyAVjmPn7fY2iAv/KfrSdVFjwB7AWlXtxzdwhjkTAwf8T0ZYaIDqr858dUN1K13Ea1b5
 HggJhvwxf+CN3GawHcFUa5/q1owHvLxL5UfHL0bx/4KkBgiY3Ayk5lnRlQsRdAh05Yzx
 Ik0xeNYzSfdTdGF7thqJzbxpjGW2vqYBsC09Uaax+gzbvS7M+S+zT4q7R+SvTmRxWbpd
 tMEo1YO465I+LdFE2twiiIlBtQ+YLh+i1ZBp9At1UO249dkNmoJj+LrD/W7HlT9ULrRu
 uJ2A==
X-Gm-Message-State: AOAM5313n1jTM80q+3mKOi2DqoDV6WryquxTBB211LDjKbCsANppu7x8
 cDYv9qS/tzGBl0Sj0KFQUA==
X-Google-Smtp-Source: ABdhPJwCIQonnSCIfxwOgO8gPt+2/0oE5Zl3IUpntY7Xd98njTzBqZsLFZWiIrcsrQosIMcr8S04Rw==
X-Received: by 2002:aca:dd09:: with SMTP id u9mr7177668oig.73.1607655755070;
 Thu, 10 Dec 2020 19:02:35 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h20sm1546911otj.57.2020.12.10.19.02.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Dec 2020 19:02:34 -0800 (PST)
Received: (nullmailer pid 3538020 invoked by uid 1000);
 Fri, 11 Dec 2020 03:02:33 -0000
Date: Thu, 10 Dec 2020 21:02:33 -0600
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?J=F3zsef_Horv=E1th?= <info@ministro.hu>
Subject: Re: [PATCH v1 2/2] Staging: silabs si4455 serial driver: docs device
 tree binding
Message-ID: <20201211030233.GA3536340@robh.at.kernel.org>
References: <20201210122154.GA31799@dincontrollerdev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201210122154.GA31799@dincontrollerdev>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 'Rob Herring' <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 'Greg Kroah-Hartman' <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 10 Dec 2020 12:21:56 +0000, J=F3zsef Horv=E1th wrote:
> add: device tree binding schema
> =

> Signed-off-by: J=F3zsef Horv=E1th <info@ministro.hu>
> ---
>  .../bindings/serial/silabs,si4455.yaml        | 53 +++++++++++++++++++
>  MAINTAINERS                                   |  2 +-
>  2 files changed, 54 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/serial/silabs,si445=
5.yaml
> =



My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/serial/silabs,si4455.example.dts:1=
9.9-14 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:342: Documentation/devicetree/bindings/s=
erial/silabs,si4455.example.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1364: dt_binding_check] Error 2


See https://patchwork.ozlabs.org/patch/1414082

The base for the patch is generally the last rc1. Any dependencies
should be noted.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
