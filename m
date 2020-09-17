Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E7C26E44C
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Sep 2020 20:44:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 22A6B2E1BB;
	Thu, 17 Sep 2020 18:44:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aAucmA0b7MKW; Thu, 17 Sep 2020 18:44:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 99B472E1A8;
	Thu, 17 Sep 2020 18:43:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 686FB1BF47A
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 18:43:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7B82E86798
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 18:43:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fNgeOo89xIl3 for <devel@linuxdriverproject.org>;
 Thu, 17 Sep 2020 18:43:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D752686796
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 18:43:26 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id D21B229C5B9
Message-ID: <72b35424372f4e3b73d82c84637672b7b39353e8.camel@collabora.com>
Subject: Re: [PATCH] media: cedrus: Propagate OUTPUT resolution to CAPTURE
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Date: Thu, 17 Sep 2020 14:43:19 -0400
In-Reply-To: <b868e559-25e0-7381-67f4-d3a6f7c0e2ed@xs4all.nl>
References: <20200514153903.341287-1-nicolas.dufresne@collabora.com>
 <b868e559-25e0-7381-67f4-d3a6f7c0e2ed@xs4all.nl>
Organization: Collabora
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32) 
MIME-Version: 1.0
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
Reply-To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: devel@driverdev.osuosl.org, kernel@collabora.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============7036962069704453548=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============7036962069704453548==
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-T5ZSHFf8CWwJEBgVkOmc"


--=-T5ZSHFf8CWwJEBgVkOmc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le jeudi 17 septembre 2020 =C3=A0 12:39 +0200, Hans Verkuil a =C3=A9crit :
> On 14/05/2020 17:39, Nicolas Dufresne wrote:
> > As per spec, the CAPTURE resolution should be automatically set based o=
n
> > the OTUPUT resolution. This patch properly propagate width/height to th=
e
> > capture when the OUTPUT format is set and override the user provided
> > width/height with configured OUTPUT resolution when the CAPTURE fmt is
> > updated.
> >=20
> > This also prevents userspace from selecting a CAPTURE resolution that i=
s
> > too small, avoiding unwanted page faults.
> >=20
> > Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> > ---
> >  drivers/staging/media/sunxi/cedrus/cedrus_video.c | 7 ++++++-
> >  1 file changed, 6 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/driver=
s/staging/media/sunxi/cedrus/cedrus_video.c
> > index 16d82309e7b6..a6d6b15adc2e 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > @@ -247,6 +247,8 @@ static int cedrus_try_fmt_vid_cap(struct file *file=
, void *priv,
> >  		return -EINVAL;
> > =20
> >  	pix_fmt->pixelformat =3D fmt->pixelformat;
> > +	pix_fmt->width =3D ctx->src_fmt.width;
> > +	pix_fmt->height =3D ctx->src_fmt.height;
> >  	cedrus_prepare_format(pix_fmt);
> > =20
> >  	return 0;
> > @@ -319,11 +321,14 @@ static int cedrus_s_fmt_vid_out(struct file *file=
, void *priv,
> >  		break;
> >  	}
> > =20
> > -	/* Propagate colorspace information to capture. */
> > +	/* Propagate format information to capture. */
> >  	ctx->dst_fmt.colorspace =3D f->fmt.pix.colorspace;
> >  	ctx->dst_fmt.xfer_func =3D f->fmt.pix.xfer_func;
> >  	ctx->dst_fmt.ycbcr_enc =3D f->fmt.pix.ycbcr_enc;
> >  	ctx->dst_fmt.quantization =3D f->fmt.pix.quantization;
> > +	ctx->dst_fmt.width =3D ctx->src_fmt.width;
> > +	ctx->dst_fmt.height =3D ctx->src_fmt.height;
>=20
> You can only do this if the capture queue isn't busy.
>=20
> See also hantro_reset_raw_fmt() where it does that check.
>=20
> So this needs a v2.

I missed this reply, wasn't expecting a negative third review. I'll
copy and paste from there. So basically:

 - EBUSY if peer vq is busy
 - EBUSY if pixel format is changed while vq is busy
 - EBUSY if streaming

Obviously, I don't have userspace to exercise any of these cases, but
it seems to make sense. I remembered about this patch today as someone
reported the kernel crash we get without this patch:

---

I tried testing cedrus with gstreamer 0.18 and it managed to crash the
kernel on
A64. I used:

  gst-launch-1.0 filesrc location=3Dtest.mkv ! matroskademux ! queue !
h264parse ! v4l2slh264dec ! filesink location=3Daaa.dat

Unable to handle kernel paging request at virtual address
8080808080808088
Mem abort info:
  ESR =3D 0x96000044
  EC =3D 0x25: DABT (current EL), IL =3D 32 bits
  SET =3D 0, FnV =3D 0
  EA =3D 0, S1PTW =3D 0
Data abort info:
  ISV =3D 0, ISS =3D 0x00000044
  CM =3D 0, WnR =3D 1
[8080808080808088] address between user and kernel address ranges
Internal error: Oops: 96000044 [#1] SMP
Modules linked in: modem_power hci_uart btrtl bluetooth ecdh_generic
ecc sunxi_cedrus(C) sun8i_ce crypto_engine snd_soc_bt_sco
snd_soc_simple_card snd_soc_simple_card_utils snd_soc_simple_amplifier
sun50i_codec_analog sun8i_codec sun8i_adda_pr_regmap snd_soc_ec25
sun4i_i2s snd_soc_core snd_pcm_dmaengine snd_pcm snd_timer snd
soundcore stk3310 inv_mpu6050_i2c inv_mpu6050 st_magn_i2c
st_sensors_i2c st_magn st_sensors industrialio_triggered_buffer
kfifo_buf regmap_i2c option usb_wwan usbserial anx7688 ohci_platform
ohci_hcd ehci_platform ehci_hcd g_cdc usb_f_acm u_serial usb_f_ecm
u_ether libcomposite sunxi phy_generic musb_hdrc udc_core usbcore
sun8i_rotate v4l2_mem2mem gc2145 ov5640 sun6i_csi videobuf2_dma_contig
v4l2_fwnode videobuf2_memops videobuf2_v4l2 videobuf2_common videodev
mc 8723cs(C) cfg80211 rfkill lima gpu_sched goodix
CPU: 0 PID: 0 Comm: swapper/0 Tainted: G         C        5.9.0-rc5-
00386-g4fe2ef82bd0b #62
Hardware name: Pine64 PinePhone (1.2) (DT)
pstate: 80000085 (Nzcv daIf -PAN -UAO BTYPE=3D--)
pc : v4l2_m2m_buf_remove+0x44/0x90 [v4l2_mem2mem]
lr : v4l2_m2m_buf_remove+0x18/0x90 [v4l2_mem2mem]
sp : ffffffc010c8be20
x29: ffffffc010c8be20 x28: ffffffc010bb2fc0=20
x27: 0000000000000060 x26: ffffffc010935e58=20
x25: ffffffc010c06a5a x24: 0000000000000080=20
x23: 0000000000000005 x22: ffffffc010c8bf4c=20
x21: ffffff806ba0d088 x20: ffffff80687d1800=20
x19: ffffff8066c40298 x18: 0000000000000000=20
x17: 0000000000000000 x16: 0000000000000000=20
x15: 000001b66678fd80 x14: 0000000000000204=20
x13: 0000000000000001 x12: 0000000000000040=20
x11: ffffff806f0c0248 x10: ffffff806f0c024a=20
x9 : ffffffc010bbdac8 x8 : ffffff806f000270=20
x7 : 0000000000000000 x6 : dead000000000100=20
x5 : dead000000000122 x4 : 0000000000000000=20
x3 : 8080808080808080 x2 : 8080808080808080=20
x1 : ffffff80641327a8 x0 : 0000000000000080=20
Call trace:
 v4l2_m2m_buf_remove+0x44/0x90 [v4l2_mem2mem]
 v4l2_m2m_buf_done_and_job_finish+0x34/0x140 [v4l2_mem2mem]
 cedrus_irq+0x8c/0xc0 [sunxi_cedrus]
 __handle_irq_event_percpu+0x54/0x150
 handle_irq_event+0x4c/0xec
 handle_fasteoi_irq+0xbc/0x1c0
 __handle_domain_irq+0x78/0xdc
 gic_handle_irq+0x50/0xa0
 el1_irq+0xb8/0x140
 arch_cpu_idle+0x10/0x14
 cpu_startup_entry+0x24/0x60
 rest_init+0xb0/0xbc
 arch_call_rest_init+0xc/0x14
 start_kernel+0x690/0x6b0
Code: f2fbd5a6 f2fbd5a5 52800004 a9400823 (f9000462)=20
---[ end trace 88233b9a76cdb261 ]---
Kernel panic - not syncing: Fatal exception in interrupt


>=20
> Regards,
>=20
> 	Hans
>=20
> > +	cedrus_prepare_format(&ctx->dst_fmt);
> > =20
> >  	return 0;
> >  }
> >=20

--=-T5ZSHFf8CWwJEBgVkOmc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQSScpfJiL+hb5vvd45xUwItrAaoHAUCX2OuRwAKCRBxUwItrAao
HORwAKDS1aEYXGxWBg34aSw2nH9rISBBzACffPFBNUnc77SBAay4jgSCE7244uY=
=eI5v
-----END PGP SIGNATURE-----

--=-T5ZSHFf8CWwJEBgVkOmc--


--===============7036962069704453548==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============7036962069704453548==--

