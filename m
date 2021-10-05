Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1744233D6
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Oct 2021 00:46:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E9BD83CB8;
	Tue,  5 Oct 2021 22:46:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8N0pWUnJ18RF; Tue,  5 Oct 2021 22:46:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42CDE83C05;
	Tue,  5 Oct 2021 22:46:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BD50D1BF94D
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 22:46:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ACA0B405D3
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 22:46:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kcqSNx5RDJfH for <devel@linuxdriverproject.org>;
 Tue,  5 Oct 2021 22:46:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
 [209.85.167.177])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 905CA405C6
 for <devel@driverdev.osuosl.org>; Tue,  5 Oct 2021 22:46:08 +0000 (UTC)
Received: by mail-oi1-f177.google.com with SMTP id a3so1375123oid.6
 for <devel@driverdev.osuosl.org>; Tue, 05 Oct 2021 15:46:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=idk/OPLqOoxicS++8eNcVOO+4pet2v6UE8sH+4Sn+Fs=;
 b=JGiMpdD50P7WOnp0idtMrnhNNx1xooBYDOBgn6jW0pEd955JCgGIW/U5Y3wV94Wig9
 Mng0FlrLk9IHVWIPABzuNcgCKCk9IrMlqu4CaXrSI1KDZJmYseMeb/UefU9BucLZChaL
 RmJeC0pNo1TvUmSJvYLNGxmqWAYFzpjsIrxuigjQEg+0voe7Q+uXgCfV72C3lr2W9Tf5
 ShagF16xhLbjYBqzG7PhhxGkZdH92j99IKrt4Eu+ggzYa1u/vq1f5/LSTxjBiDaF3dIU
 fVIVfRbMXn6g9dhughS+40dFHP/z+4QU8crr3439SSdZi8KmnxjW/yYjX2+Js0MNnYxP
 Ajww==
X-Gm-Message-State: AOAM530VNS1tr1ErPggN6Y60XH5t0BgV6m3/sQ+IRBp2aNlcCpwksMKL
 TrF1MDamQ0Csu3wvKHN7AA==
X-Google-Smtp-Source: ABdhPJzuCyAG5KCu9OI9pzfAoSNtgTk0/nwWINbsvAaJKNhig4buPmUm2PEwS2D8Cwi0GfG/C6nvPw==
X-Received: by 2002:aca:2415:: with SMTP id n21mr4542248oic.27.1633473967660; 
 Tue, 05 Oct 2021 15:46:07 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id a9sm3775851otk.3.2021.10.05.15.46.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Oct 2021 15:46:06 -0700 (PDT)
Received: (nullmailer pid 106780 invoked by uid 1000);
 Tue, 05 Oct 2021 22:45:59 -0000
From: Rob Herring <robh@kernel.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
In-Reply-To: <20211005135400.788058-3-Jerome.Pouiller@silabs.com>
References: <20211005135400.788058-1-Jerome.Pouiller@silabs.com>
 <20211005135400.788058-3-Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v8 02/24] dt-bindings: introduce silabs,wfx.yaml
Date: Tue, 05 Oct 2021 17:45:59 -0500
Message-Id: <1633473959.392405.106778.nullmailer@robh.at.kernel.org>
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
 Ulf Hansson <ulf.hansson@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 =?utf-8?q?Pali_Roh=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0148839289799777114=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============0148839289799777114==
Content-Type: text/plain

On Tue, 05 Oct 2021 15:53:38 +0200, Jerome Pouiller wrote:
> From: Jérôme Pouiller <jerome.pouiller@silabs.com>
> 
> Prepare the inclusion of the wfx driver in the kernel.
> 
> Signed-off-by: Jérôme Pouiller <jerome.pouiller@silabs.com>
> ---
>  .../bindings/net/wireless/silabs,wfx.yaml     | 137 ++++++++++++++++++
>  1 file changed, 137 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/wireless/silabs,wfx.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/net/wireless/silabs,wfx.yaml:39:31: [error] syntax error: mapping values are not allowed here (syntax)

dtschema/dtc warnings/errors:
make[1]: *** Deleting file 'Documentation/devicetree/bindings/net/wireless/silabs,wfx.example.dts'
Traceback (most recent call last):
  File "/usr/local/bin/dt-extract-example", line 45, in <module>
    binding = yaml.load(open(args.yamlfile, encoding='utf-8').read())
  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py", line 434, in load
    return constructor.get_single_data()
  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/constructor.py", line 120, in get_single_data
    node = self.composer.get_single_node()
  File "_ruamel_yaml.pyx", line 706, in _ruamel_yaml.CParser.get_single_node
  File "_ruamel_yaml.pyx", line 724, in _ruamel_yaml.CParser._compose_document
  File "_ruamel_yaml.pyx", line 775, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 889, in _ruamel_yaml.CParser._compose_mapping_node
  File "_ruamel_yaml.pyx", line 775, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 891, in _ruamel_yaml.CParser._compose_mapping_node
  File "_ruamel_yaml.pyx", line 904, in _ruamel_yaml.CParser._parse_next_event
ruamel.yaml.scanner.ScannerError: mapping values are not allowed in this context
  in "<unicode string>", line 39, column 31
make[1]: *** [Documentation/devicetree/bindings/Makefile:20: Documentation/devicetree/bindings/net/wireless/silabs,wfx.example.dts] Error 1
make[1]: *** Waiting for unfinished jobs....
./Documentation/devicetree/bindings/net/wireless/silabs,wfx.yaml:  mapping values are not allowed in this context
  in "<unicode string>", line 39, column 31
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/wireless/silabs,wfx.yaml: ignoring, error parsing file
warning: no schema found in file: ./Documentation/devicetree/bindings/net/wireless/silabs,wfx.yaml
make: *** [Makefile:1441: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1536655

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


--===============0148839289799777114==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0148839289799777114==--
