Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1A159DD7
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 16:35:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2C05585932;
	Fri, 28 Jun 2019 14:35:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WOQFCbxhCqe1; Fri, 28 Jun 2019 14:35:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 29120864AD;
	Fri, 28 Jun 2019 14:35:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 510D31BF29C
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 14:35:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4DFD0881E2
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 14:35:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QuvrXoJ9NR-7 for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 14:35:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 47C17881DC
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 14:35:37 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id s22so4965127qkj.12
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 07:35:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version;
 bh=8l9O3yIPDW1K3Y+vUSQBC9BFnuSLH2qrq70Oyl3bqTM=;
 b=KQ01y8hjWbjRfeFxqffEnFGag2BbqSatG4UQOlbpJqY27U9FTSc4GMXdQBRtnVecS0
 mQmtlGvhrpiIREXh4QXivxvzFd2adq+ovO8dvoTuIJwgEiLfApK+1ac2lunBxICC+6sw
 TVXHe25BvGxi+mE1be7qOgO4wIIp2tAIipxHXvxDeCr5yFM4OnoqPUzQwMfdMddGM7nS
 fgagoIjxvjotdTu5Gzm6uylSR7ImKyZefrIUopAxQ2KOPxXe5JSgNLgdkgcN0P2rsqqy
 sJPvPPz7beiyziEr8Lziaqt45JEssrm/AuB3mz4nbZnbK81HbrtyevqS/GZIasA04UOA
 8Iow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version;
 bh=8l9O3yIPDW1K3Y+vUSQBC9BFnuSLH2qrq70Oyl3bqTM=;
 b=rfLbbZaAp6OVWaaLdhH1NJK6DFYptAoch4/Ux7DBSm93IfMTk6QeOatF6YcJlbwy0f
 o2lJyateKCPDkg4dzBSszXBReyN5z30TRqcIIikYqhzHx/lcdy6DJHvoGnf89QWfQJGO
 qKi1vq2grMnDh3faD/C85ojEJXfbHLHrsN/syflw0XT7uy/5G2aCGvkoITbEhPAYwtLs
 06l4/CvtBjsCWMkKXHpZk7GxF2fiNb8zbdAwhju+if6/YHjh8pgAlr9iIOEEOg+Xqes8
 fAmXGxRPlXKkbHNnoQhAPWvVoevfwJho7ru8o53mBHRCpFtBsSXgqFHIf3EFs2jyHKJF
 hWKA==
X-Gm-Message-State: APjAAAVTqIrxZ2OOYJeEhwPqUEUEyhqZnaZIk52J4nDpZ7l0QnkDX/fx
 y+WPu4t/Dw4b/a482E6pQn1MFw==
X-Google-Smtp-Source: APXvYqyCAi6NifW9nZd5H0Tj9993kIrWJTjVPadE7sIjFfB26fk4H20YZ/DTc5DV2O2hLeMeg1aVZA==
X-Received: by 2002:a37:dd4:: with SMTP id 203mr9253753qkn.326.1561732536308; 
 Fri, 28 Jun 2019 07:35:36 -0700 (PDT)
Received: from tpx230-nicolas.collaboramtl
 (modemcable154.55-37-24.static.videotron.ca. [24.37.55.154])
 by smtp.gmail.com with ESMTPSA id g2sm1116350qkb.80.2019.06.28.07.35.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 28 Jun 2019 07:35:35 -0700 (PDT)
Message-ID: <a26691644df987aa93523be388646f89d9f468da.camel@ndufresne.ca>
Subject: Re: [PATCH 01/31] staging: bcm2835-camera: Ensure H264 header bytes
 get a sensible timestamp
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Hans Verkuil <hverkuil@xs4all.nl>, Dave Stevenson
 <dave.stevenson@raspberrypi.org>
Date: Fri, 28 Jun 2019 10:35:33 -0400
In-Reply-To: <df6c4e8e-9182-f629-2bd7-a36b5697f382@xs4all.nl>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
 <1561661788-22744-2-git-send-email-wahrenst@gmx.net>
 <5e20b1d04b3c2f64173631ec2f0261a8a9597f0c.camel@ndufresne.ca>
 <CAAoAYcOvnF55U0kPMFE4cOd=nUqjoidirbGP6AWN=5Rqp0RhbQ@mail.gmail.com>
 <54088ebc2fcbcc3a202ab0fd4d32f9ad8c1e9b82.camel@ndufresne.ca>
 <df6c4e8e-9182-f629-2bd7-a36b5697f382@xs4all.nl>
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LMML <linux-media@vger.kernel.org>, Eric Anholt <eric@anholt.net>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
Content-Type: multipart/mixed; boundary="===============9033220464001715884=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============9033220464001715884==
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-3Fdc3agw+15zg51DLGrO"


--=-3Fdc3agw+15zg51DLGrO
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le vendredi 28 juin 2019 =C3=A0 16:08 +0200, Hans Verkuil a =C3=A9crit :
> On 6/28/19 4:00 PM, Nicolas Dufresne wrote:
> > Le vendredi 28 juin 2019 =C3=A0 11:10 +0100, Dave Stevenson a =C3=A9cri=
t :
> > > Hi Nicolas
> > >=20
> > > On Thu, 27 Jun 2019 at 20:55, Nicolas Dufresne <nicolas@ndufresne.ca>=
 wrote:
> > > > Hi Dave,
> > > >=20
> > > > Le jeudi 27 juin 2019 =C3=A0 20:55 +0200, Stefan Wahren a =C3=A9cri=
t :
> > > > > From: Dave Stevenson <dave.stevenson@raspberrypi.org>
> > > > >=20
> > > > > H264 header come from VC with 0 timestamps, which means they get =
a
> > > > > strange timestamp when processed with VC/kernel start times,
> > > > > particularly if used with the inline header option.
> > > > > Remember the last frame timestamp and use that if set, or otherwi=
se
> > > > > use the kernel start time.
> > > >=20
> > > > Normally H264 headers are considered to be part of the following fr=
ame.
> > > > Giving it the timestamp of the previous frame will likely confuse s=
ome
> > > > userspace and cause an off-by-one in timestamp. I understand this i=
s a
> > > > workaround, but am wondering if this can be improved.
> > >=20
> > > Sorry, slight ambiguity in how I'm reading your comment.
> > >=20
> > > Are you saying that the header bytes want to be in the same buffer as
> > > the following frame?
> > > I thought this had also been discussed in the V4L2 stateful codec API
> > > threads along with how many encoded frames were allowed in a single
> > > V4L2 buffer. I certainly hadn't seen a statement about the header
> > > bytes being combined with the next frame.
> > > If the behaviour required by V4L2 is that header bytes and following
> > > frame are in the same buffer, then that is relatively easy to achieve
> > > in the firmware. This workaround can remain for older firmware as it
> > > will never trigger if the firmware has combined the frames.
> >=20
> > The frame alignment is a requirement specific to the stateful codec
> > API.
>=20
> Is it? I don't remember it being specified anywhere explicitly.
> Here is the latest text:
>=20
> https://hverkuil.home.xs4all.nl/codec-api/uapi/v4l/dev-encoder.html
>=20
> I'll start a new thread about this, since this really needs to be
> clarified.

Ok, let's clarify this, but before we start, a quick reminder that this
is what userspace assumes already, so breaking this will cause
regressions all over.

>=20
> Regards,
>=20
> 	Hans
>=20
>  Stateful codec must interpret _H264 format as being one full frame
> > per buffer (1 AU in progressive, and 1 to 2 AU in interlaced), the
> > first frame should include SPS/PPS and any other prefix NALs. You may
> > follow this rule in your capture driver if you want to make it possible
> > to zero-copy the encoded frames from the capture to the decoder.
> > Though, userspace will still have to parse as there is no indication
> > for capture devices of the H264 alignment being used (that imply 1
> > frame latency). Boris is working on a control for stateless CODEC to
> > control if we are running in full-frame or per slices. I do hope this
> > control will be extended later to allow cameras and decoders to signal
> > their alignment, or simply to allow enabling low-latency modes
> > supported by CODA and ZynMP firmwares.
> >=20
> > > Or are you saying that the header bytes remain in their own buffer,
> > > but the timestamp wants to be the same as the next frame? That is
> > > harder to achieve in the firmware, but could probably be done in the
> > > kernel driver by holding on to the header bytes frame until the next
> > > buffer had been received, at which point the timestamp can be copied
> > > across. Possible, but just needs slightly careful handling to ensure
> > > we don't lose buffers accidentally.
> >=20
> > So this isn't specified by V4L2 itself. So instead I rely on H264 and
> > MPEG TS specification to advance this. This is also the interpretation
> > we have of timestamp in GStreamer (ffmpeg uses out-of-band headers with
> > full frame AVC, so this does not apply).
> >=20
> > So H264 AUD, SPS, PPS, SEI and other prefix NAL are considered to be
> > the start of a frame. With this interpretation in mind, accumulating
> > them is considered zero-latency. This basically means that if they are
> > to have a timestamp, they would share that timestamp with all the
> > slices of the same frame. In GStreamer, we have the notion of no
> > timestamp, so in such a case we'd leave the timestamp empty and our
> > parsers would pick the first valid timestamp that formed the full frame
> > as being the frame timestamp (it's a bit buggier then that, but that's
> > what it's suppose to do).
> >=20
> > On top of that, if you don't have any meaningful alignment in your H264
> > stream, the MPEG TS format states that the timestamp of a buffer should
> > be the timestamp of the first NAL starting within this buffer, or the
> > timestamp of the current NAL if there is not NAL start.
> >=20
> > By respecting these standards you ensure that latency aware application
> > can work with your driver without causing delays, or worst, having to
> > deal with artificially late frames.
> >=20
> > I hope this clarify and helps understand my request for "unhacking" the
> > headers timestamps. I had assumed the timestamp came from the driver
> > (instead of from the firmware), sorry if that caused confusion. If
> > merging full frames is easier, I think I would opt for that as it's
> > beneficial to performance when combined with other full frame APIs.
> >=20
> > Nicolas
> >=20
> > >   Dave
> > >=20
> > > > > Link: https://github.com/raspberrypi/linux/issues/1836
> > > > > Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
> > > > > ---
> > > > >  .../staging/vc04_services/bcm2835-camera/bcm2835-camera.c  | 14 =
++++++++++++--
> > > > >  .../staging/vc04_services/bcm2835-camera/bcm2835-camera.h  |  2 =
++
> > > > >  2 files changed, 14 insertions(+), 2 deletions(-)
> > > > >=20
> > > > > diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835=
-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > > > > index dce6e6d..0c04815 100644
> > > > > --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera=
.c
> > > > > +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera=
.c
> > > > > @@ -359,7 +359,9 @@ static void buffer_cb(struct vchiq_mmal_insta=
nce *instance,
> > > > >               }
> > > > >       } else {
> > > > >               if (dev->capture.frame_count) {
> > > > > -                     if (dev->capture.vc_start_timestamp !=3D -1=
 && pts) {
> > > > > +                     if (dev->capture.vc_start_timestamp !=3D -1=
) {
> > > > > +                             buf->vb.vb2_buf.timestamp =3D ktime=
_get_ns();
> > > > > +                     } else if (pts) {
> > > > >                               ktime_t timestamp;
> > > > >                               s64 runtime_us =3D pts -
> > > > >                                   dev->capture.vc_start_timestamp=
;
> > > > > @@ -372,8 +374,15 @@ static void buffer_cb(struct vchiq_mmal_inst=
ance *instance,
> > > > >                                        ktime_to_ns(timestamp));
> > > > >                               buf->vb.vb2_buf.timestamp =3D ktime=
_to_ns(timestamp);
> > > > >                       } else {
> > > > > -                             buf->vb.vb2_buf.timestamp =3D ktime=
_get_ns();
> > > > > +                             if (dev->capture.last_timestamp) {
> > > > > +                                     buf->vb.vb2_buf.timestamp =
=3D
> > > > > +                                             dev->capture.last_t=
imestamp;
> > > > > +                             } else {
> > > > > +                                     buf->vb.vb2_buf.timestamp =
=3D
> > > > > +                                             ktime_to_ns(dev->ca=
pture.kernel_start_ts);
> > > > > +                             }
> > > > >                       }
> > > > > +                     dev->capture.last_timestamp =3D buf->vb.vb2=
_buf.timestamp;
> > > > >=20
> > > > >                       vb2_set_plane_payload(&buf->vb.vb2_buf, 0, =
length);
> > > > >                       vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_S=
TATE_DONE);
> > > > > @@ -541,6 +550,7 @@ static int start_streaming(struct vb2_queue *=
vq, unsigned int count)
> > > > >                        dev->capture.vc_start_timestamp, parameter=
_size);
> > > > >=20
> > > > >       dev->capture.kernel_start_ts =3D ktime_get();
> > > > > +     dev->capture.last_timestamp =3D 0;
> > > > >=20
> > > > >       /* enable the camera port */
> > > > >       dev->capture.port->cb_ctx =3D dev;
> > > > > diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835=
-camera.h b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
> > > > > index 2b5679e..09273b0 100644
> > > > > --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera=
.h
> > > > > +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera=
.h
> > > > > @@ -90,6 +90,8 @@ struct bm2835_mmal_dev {
> > > > >               s64         vc_start_timestamp;
> > > > >               /* Kernel start timestamp for streaming */
> > > > >               ktime_t kernel_start_ts;
> > > > > +             /* Timestamp of last frame */
> > > > > +             u64             last_timestamp;
> > > > >=20
> > > > >               struct vchiq_mmal_port  *port; /* port being used f=
or capture */
> > > > >               /* camera port being used for capture */
> > > > > --
> > > > > 2.7.4
> > > > >=20

--=-3Fdc3agw+15zg51DLGrO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQSScpfJiL+hb5vvd45xUwItrAaoHAUCXRYltQAKCRBxUwItrAao
HBaZAJ9R2y+IPJr5GvAJ0pMTyQPIPwsQJQCdFNDBuauOrD6ZN49s0kQ/lvpt9K8=
=uvxS
-----END PGP SIGNATURE-----

--=-3Fdc3agw+15zg51DLGrO--


--===============9033220464001715884==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============9033220464001715884==--

