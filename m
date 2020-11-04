Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8B72A6D93
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 20:11:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5A1A62043A;
	Wed,  4 Nov 2020 19:11:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3QU-eiTy48f3; Wed,  4 Nov 2020 19:11:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 661A1203E1;
	Wed,  4 Nov 2020 19:11:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B91D51BF38E
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 19:11:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B560D860EF
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 19:11:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8kJ1qPtAS2c1 for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 19:11:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7AF098607D
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 19:11:48 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id k26so36310oiw.0
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 11:11:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=8kvDlvfB/ougNgcIaK1HVi2RwwJqg5X8RCfCHinO1k4=;
 b=np/6mXwDyixq4sT8vRTZlJDzOD6STanx2uXytEqeVqqiFnEkimsQU2BF3W6+pOMj12
 o5pWlOY0zyK5aPs4EbWY00ipBghS4jjHmMfuaExEYt62zLoAlVkgsRE1HNN1UWDhFvML
 /dJkbPAjXZvd8166jR7Fvpoh9YOPZpmVpV9KZMy2M2YaFLZ22n1ZO2WaggIsUhgmQumc
 +Q1t6OCzEv3AdDohXNVOoESYWKgqvLndFKpAOT1jb02zZQrcFK6wydEUnNL43NwQXogg
 T5An/r3mn+5R9lpaPZQHA5kZ4rLlvMKRNONT4P4u2M059wJXuYh8pzrXYd+WvNOIKKoQ
 2cbw==
X-Gm-Message-State: AOAM5326VSpDs2wncXo9N9jNyPFAuzSJRM63BpMGcIL8QpP6DNRLMJHd
 gcvw7DAo7RoEvJqF0RCAX4hBCM1JXQ==
X-Google-Smtp-Source: ABdhPJy2VWTtxX+P4OimzsGuO4yCP41YMoUq6SSdGAKVAARpRXrNgGXvevDEeX5xh15jVWPjlr45xA==
X-Received: by 2002:aca:6185:: with SMTP id v127mr3506004oib.135.1604517107763; 
 Wed, 04 Nov 2020 11:11:47 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id f4sm710175oot.16.2020.11.04.11.11.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 11:11:47 -0800 (PST)
Received: (nullmailer pid 3967436 invoked by uid 1000);
 Wed, 04 Nov 2020 19:11:46 -0000
Date: Wed, 4 Nov 2020 13:11:46 -0600
From: Rob Herring <robh@kernel.org>
To: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Subject: Re: [PATCH v7 1/7] dt-bindings: add documentation of xilinx clocking
 wizard
Message-ID: <20201104191146.GA3967018@bogus>
References: <1604502407-14352-1-git-send-email-shubhrajyoti.datta@xilinx.com>
 <1604502407-14352-2-git-send-email-shubhrajyoti.datta@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1604502407-14352-2-git-send-email-shubhrajyoti.datta@xilinx.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org, sboyd@kernel.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com, git@xilinx.com,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 04 Nov 2020 20:36:41 +0530, Shubhrajyoti Datta wrote:
> Add the devicetree binding for the xilinx clocking wizard.
> 
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> ---
> v6:
> Fix a yaml warning
> v7:
> Add vendor prefix speed-grade
> 
>  .../bindings/clock/xlnx,clocking-wizard.yaml       | 65 ++++++++++++++++++++++
>  1 file changed, 65 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml
> 


My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml:21:7: [warning] wrong indentation: expected 4 but found 6 (indentation)
./Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml:38:7: [warning] wrong indentation: expected 4 but found 6 (indentation)
./Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml:40:5: [error] syntax error: expected <block end>, but found '<block mapping start>' (syntax)

dtschema/dtc warnings/errors:
Traceback (most recent call last):
  File "/usr/local/bin/dt-extract-example", line 45, in <module>
    binding = yaml.load(open(args.yamlfile, encoding='utf-8').read())
  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py", line 343, in load
    return constructor.get_single_data()
  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/constructor.py", line 111, in get_single_data
    node = self.composer.get_single_node()
  File "_ruamel_yaml.pyx", line 706, in _ruamel_yaml.CParser.get_single_node
  File "_ruamel_yaml.pyx", line 724, in _ruamel_yaml.CParser._compose_document
  File "_ruamel_yaml.pyx", line 775, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 889, in _ruamel_yaml.CParser._compose_mapping_node
  File "_ruamel_yaml.pyx", line 775, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 891, in _ruamel_yaml.CParser._compose_mapping_node
  File "_ruamel_yaml.pyx", line 904, in _ruamel_yaml.CParser._parse_next_event
ruamel.yaml.parser.ParserError: while parsing a block mapping
  in "<unicode string>", line 20, column 3
did not find expected key
  in "<unicode string>", line 40, column 5
make[1]: *** [Documentation/devicetree/bindings/Makefile:20: Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.example.dts] Error 1
make[1]: *** Deleting file 'Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.example.dts'
make[1]: *** Waiting for unfinished jobs....
make[1]: *** [Documentation/devicetree/bindings/Makefile:59: Documentation/devicetree/bindings/processed-schema-examples.json] Error 123
make: *** [Makefile:1364: dt_binding_check] Error 2


See https://patchwork.ozlabs.org/patch/1394053

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
